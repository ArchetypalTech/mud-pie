require('dotenv/config');
import { HardhatUserConfig } from 'hardhat/config';
import '@nomicfoundation/hardhat-toolbox';
import '@fluent.xyz/hardhat-plugin';
import '@nomicfoundation/hardhat-ignition';
import 'hardhat-deploy';
require("@nomicfoundation/hardhat-verify");

// NB we will generally not use this for MUD as we run the deploys from 
// the MUD package and this uses forge under the hood to then deploy 
// to the Fluent node be it local or remote
// if you are also deploying contracts compiled by the hardhat compilation
// chain you'll want to set this accordingly in your own .env
const DEPLOYER_PRIVATE_KEY = process.env.DEPLOYER_PRIVATE_KEY || '';

const config: HardhatUserConfig = {
  namedAccounts: {
    deployer: {
      default: 0,
    },
  },
  defaultNetwork: 'local',
  networks: {
    local: {
      url: 'http://127.0.0.1:8545',
      accounts: {
        mnemonic: 'test test test test test test test test test test test junk',
        count: 10,
        path: "m/44'/60'/0'/0",
        initialIndex: 0,
      },
      chainId: 1337,
    },
    dev: {
      url: 'https://rpc.dev.gblend.xyz/',
      accounts: [DEPLOYER_PRIVATE_KEY],
      chainId: 20993,
    },
  },
  etherscan: {
    apiKey: {
      // It is not required by blockscout. Can be any non-empty string
      'dev': "API_KEY",
    },
    customChains: [
      {
        network: "dev",
        chainId: 20993,
        urls: {
          apiURL: "https://optimism-sepolia.blockscout.com/api",
          browserURL: "https://optimism-sepolia.blockscout.com/"
        }
      }
    ]
  },
  sourcify: {
    enabled: false,
  },
  solidity: {
    version: '0.8.24',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  fluent: {
    discovery: {
      errorOnContractDiscovery: false,
      enabled: true,
      paths: [],
      ignore: []
    }
  }
};

export default config;







