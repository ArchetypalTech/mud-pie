require('dotenv/config');
import { HardhatUserConfig } from 'hardhat/config';
import '@nomicfoundation/hardhat-toolbox';
import '@fluent.xyz/hardhat-plugin';
import '@nomicfoundation/hardhat-ignition';
import '@nomicfoundation/hardhat-verify';
import 'hardhat-deploy';
import './tasks/greeting';

// NB we will generally not use this for MUD as we run the deploys from 
// the MUD package and this uses forge under the hood to then deploy 
// to the Fluent node be it local or remote
// if you are also deploying contracts compiled by the hardhat compilation
// chain you'll want to set this accordingly in your own .env
const DEPLOYER_PRIVATE_KEY = process.env.DEPLOYER_PRIVATE_KEY || '';

const config: HardhatUserConfig = {
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
    }
  },
  solidity: {
    version: '0.8.20',
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
  },
  etherscan: {
    apiKey: {
      dev: "dummy", // BlockScout doesn't require API key
    },
    customChains: [
      {
        network: "dev",
        chainId: 20993,
        urls: {
          apiURL: "https://blockscout.dev.gblend.xyz/api",
          browserURL: "https://blockscout.dev.gblend.xyz"
        }
      }
    ]
  },
  sourcify: {
    enabled: false,
  }
};


export default config;