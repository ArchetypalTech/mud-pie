import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { ethers } from "ethers";
import fs from "fs";
import crypto from "crypto";
import path from "path";
require("dotenv").config();

const DEPLOYER_PRIVATE_KEY =
  process.env.DEPLOYER_PRIVATE_KEY ||
  "ac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80";

const CONTRACTS_PATH = "./artifacts/contracts/";

// Helper function to recursively find all .sol directories
function findSolDirectories(dir: string): string[] {
  const results: string[] = [];
  const files = fs.readdirSync(dir);
  
  for (const file of files) {
    const fullPath = path.join(dir, file);
    if (fs.statSync(fullPath).isDirectory()) {
      if (file.endsWith('.sol')) {
        results.push(fullPath);
      } else {
        results.push(...findSolDirectories(fullPath));
      }
    }
  }
  return results;
}

const func: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployments, ethers, config, network } = hre;
  const { deploy, save, getOrNull } = deployments;

  // Get the deployer address from the private key
  const provider = new ethers.JsonRpcProvider(network.config.url);
  const deployerWallet = new ethers.Wallet(DEPLOYER_PRIVATE_KEY, provider);
  const deployerAddress = deployerWallet.address;

  console.log("deployerAddress", deployerAddress);

  let checkmateValidatorAddress;
  // Check if WASM contract exists before trying to deploy it
  const wasmBinaryPath = "./greeting/lib.wasm";
  if (fs.existsSync(wasmBinaryPath)) {
    console.log("Deploying WASM contract...");
    // @ts-ignore
    const provider = new ethers.JsonRpcProvider(network.config.url);
    const deployer = new ethers.Wallet(DEPLOYER_PRIVATE_KEY, provider);

    const [accounte] = await ethers.getSigners();
    console.log("account address",await accounte.getAddress());
    const balance = await accounte.provider.getBalance(await accounte.getAddress());
    console.log("account balance",balance.toString());

    checkmateValidatorAddress = await deployWasmContract(
      wasmBinaryPath,
      deployer,
      provider,
      getOrNull,
      save
    );
  } else {
    console.log("No WASM contract found at ./greeting/lib.wasm - skipping WASM deployment");
  }

  // Deploy all contracts from the packages directory
  const solDirectories = findSolDirectories(CONTRACTS_PATH);
  
  for (const solDir of solDirectories) {
    const dirName = path.basename(solDir, '.sol');
    const jsonPath = path.join(solDir, `${dirName}.json`);
    const abiPath = path.join(solDir, `${dirName}.abi.json`);

    if (!fs.existsSync(jsonPath) || !fs.existsSync(abiPath)) {
      console.log(`Skipping ${dirName} - missing JSON files`);
      continue;
    }

    const contractData = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));
    const abiData = JSON.parse(fs.readFileSync(abiPath, 'utf8'));

    if (!contractData.bytecode) {
      console.log(`Skipping ${dirName} - no bytecode found`);
      continue;
    }

    console.log(`Deploying ${dirName}...`);
    
    try {
      const deployment = await deploy(dirName, {
        from: deployerAddress,
        args: [], // Note: You might need to handle constructor arguments differently
        bytecode: contractData.bytecode,
        abi: abiData,
        log: true,
      });

      console.log(`${dirName} deployed at: ${deployment.address}`);
    } catch (error) {
      console.error(`Failed to deploy ${dirName}:`, error);
    }
  }

  // Only deploy GreetingWithWorld if we deployed the WASM contract
  if (checkmateValidatorAddress) {
    console.log("Deploying GreetingWithWorld contract...");
    const fluentGreetingContractAddress = checkmateValidatorAddress;

    const greetingWithWorld = await deploy("GreetingWithWorld", {
      from: deployerAddress,
      args: [fluentGreetingContractAddress],
      log: true,
    });

    console.log(
      `GreetingWithWorld contract deployed at: ${greetingWithWorld.address}`
    );

  // // Verify the contract on Blockscout
  // try {
  //   await hre.run("verify:verify", {
  //     address: greetingWithWorld.address,
  //     constructorArguments: [checkmateValidatorAddress],
  //   });
  //   console.log("GreetingWithWorld verified on Blockscout");
  // } catch (err: any) {
  //   console.error("Verification failed for GreetingWithWorld:", err.message);
  // }
  }
};

async function deployWasmContract(
  wasmBinaryPath: string,
  deployer: ethers.Wallet,
  provider: ethers.JsonRpcProvider,
  getOrNull: any,
  save: any
) {
  const wasmBinary = fs.readFileSync(wasmBinaryPath);
  const wasmBinaryHash = crypto
    .createHash("sha256")
    .update(wasmBinary)
    .digest("hex");
  const artifactName = path.basename(wasmBinaryPath, ".wasm");
  const existingDeployment = await getOrNull(artifactName);

  if (existingDeployment && existingDeployment.metadata === wasmBinaryHash) {
    console.log(`WASM contract bytecode has not changed. Skipping deployment.`);
    console.log(`Existing contract address: ${existingDeployment.address}`);
    return existingDeployment.address;
  }

  const gasPrice = (await provider.getFeeData()).gasPrice;

  const transaction = {
    data: "0x" + wasmBinary.toString("hex"),
    gasLimit: 300_000_000,
    gasPrice: gasPrice,
  };

  const tx = await deployer.sendTransaction(transaction);
  const receipt = await tx.wait();

  if (receipt && receipt.contractAddress) {
    console.log(`WASM contract deployed at: ${receipt.contractAddress}`);

    const artifact = {
      abi: [],
      bytecode: "0x" + wasmBinary.toString("hex"),
      deployedBytecode: "0x" + wasmBinary.toString("hex"),
      metadata: wasmBinaryHash,
    };

    const deploymentData = {
      address: receipt.contractAddress,
      ...artifact,
    };

    await save(artifactName, deploymentData);
  } else {
    throw new Error("Failed to deploy WASM contract");
  }

  return receipt.contractAddress;
}


export default func;
func.tags = ["all"];