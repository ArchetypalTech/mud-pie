/*
 * The supported chains.
 * By default, there are only two chains here:
 *
 * - mudFoundry, the chain running on anvil that pnpm dev
 *   starts by default. It is similar to the viem anvil chain
 *   (see https://viem.sh/docs/clients/test.html), but with the
 *   basefee set to zero to avoid transaction fees.
 * - Redstone, our production blockchain (https://redstone.xyz/)
 * - Garnet, our test blockchain (https://garnetchain.com/))
 *
 */

import { MUDChain, mudFoundry, redstone, garnet } from "@latticexyz/common/chains";

const fluentTestnet: MUDChain = {
  name: 'Fluent Testnet',
  id: 20993,
  network: 'fluent-testnet',
  nativeCurrency: { decimals: 18, name: 'EtherDollar', symbol: 'ETH' },
  rpcUrls: {
    default: {
      http: ['https://rpc.dev.gblend.xyz/'],
      webSocket: [''],
    },
    public: {
      http: ['https://rpc.dev.gblend.xyz/'],
      webSocket: [''],
    },
  },
  blockExplorers: {
    default: {
      name: 'Blockscout',
      url: 'https://blockscout.dev.fluentlabs.xyz',
    },
  },
  faucetUrl: 'https://faucet.dev.gblend.xyz/',
} as const;


const fluentLocal: MUDChain = {
  id: 1337,
  name: 'Fluent Runner',
  network: 'fluent_local',
  nativeCurrency: {
    decimals: 18,
    name: 'Ether',
    symbol: 'ETH',
  },
  rpcUrls: {
    default: {
      http: ['/local-rpc'],
      webSocket: ['/local-ws'],
    },
    public: {
      http: ['/local-rpc'],
      webSocket: ['/local-ws'],
    },
  },
} as const;

/*
 * See https://mud.dev/guides/hello-world/add-chain-client
 * for instructions on how to add networks.
 */
export const supportedChains: MUDChain[] = [mudFoundry, redstone, garnet, fluentLocal, fluentTestnet];
