## 10 Simple Steps to use this repo and deploy a MUD project via hardhat to fluent

This project is set up to ease the process of building your [MUD](https://mud.dev/introduction) built dApp and deploying to [Fluent](https://docs.fluentlabs.xyz/learn)

NOTE: We are still doing internal testing, this should be ready for external testing from 12/02/2025
1. Read this guide
2. Pull this repo
3. run ```pnpm install```
4. ```cd /fluent```

## To build a local node and run a localnet deployment
5. run ```pnpm mud:dev``` // runs a local deployment

## To do a remote deploy to a devnet/testnet/mainnet
6. add a private key to the ENV file // (make sure to have ENV in git ignore - you dont want to be committing that!)
7. add in RPC targets (find them here) and (set theme here)
8. run ```pnpm mud:deploy:fluent```
9. You've saved 2 steps, use them to do something creative with your new deploy!!!

