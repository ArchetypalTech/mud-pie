# Blended MUD Apps - Introduction

We are using this as a basis for a MUD interop, this interop is therefore a `mud-pie`.

A `mud-pie` is a MUD project that can work in a Blended environment.

A `mud-pie` as it stands is a monorepo and  based on MUD from [Lattice](https://mud.dev/introduction).

We leverage `forge` to build the ABI's for the contracts and to handle the deployment to a given chain. see [Foundry](https://github.com/foundry-rs/forge-std).

We run a hardhat node locally which is itself a docker container available as the fluent-node. This container is a node that runs a rWASM blended environment. See [hardhat-plugin](https://github.com/fluentlabs-xyz/hardhat-plugin).

This repo therefore combines `Forge` and `Hardhat` so you can deploy a `MUD` app to a `Fluent` chain

For more details on blended execution you can check the [Building a Blended App](https://docs.fluentlabs.xyz/learn/developer-guides/building-a-blended-app) tutorial.

The project has been tested on Mac Intel and Silicon and Ubuntu. Other Linux distros may show false positives.

## Dev Requirements

1. `mprocs`
2. `Node`: `version == 20.11.0` (NOTE `23` WILL NOT WORK)
3. `pnpm` : `version == 9.8.0`
4. `docker` : we have tested with `27.3.1`

Please be aware that these versions matter, latest will not work.

## 📦 Install repo with `pnpm`

1. Install the dependencies listed above.
2. clone the reop
3. `cd mud-pie`
4. `pnpm install`

### 🚀 Running a local deploy
```pnpm mud:dev:local``` 

**nb** if you are on an intel mac it is 

```pnpm mud:dev:local:intel```

Navigate to `localhost:3000` to see the running client.

### 🚀Running a testnet deploy
```pnpm mud:dev:testnet``` 

(or again `mud:dev:testnet:intel`)

Navigate to `localhost:3000` to see the running client.

**NOTE**
you will need to amend the `.env` files to add keys. see the files in `packages/contracts/.env` and `packages/client/.env`

You will also need to change the `VITE_CHAIN_ID` var in `packages/client/.env` to reflect the chain id for the chain. 1337 for local and 20993 for the fluent testnet.

### 🚀 Running a test suite
`pnpm mud:test`

## Expected Results
The commands open a `mprocs` terminal with the running processes.
 
Use the up and down arrows to see the output from each process and `Ctrl-U`/`Ctrl-D` to scroll through the respective outputs

![mud-pie-tmuxup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-tmuxup-mac-01.png)

screen of mac tmux NODE UP CONTRACTS UP CLIENT UP

![mud-pie-clientup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-clientup-mac-01.png)

You may get errors in the webclient console to do with any extensions you have and a 404 for the favicon.ico, these can be ignored

Your MUD fluent deploy is working! Congrats.

Your increment counter clicks show up as transactions on the block explorer.

## Stopping local containers

`mprocs` doesnt seem to like doing this cleanly so:

stop the containers with:
```sh
docker stop $(docker ps -q --filter ancestor=ghcr.io/fluentlabs-xyz/fluent:latest)
```
or using `pnpm`
```sh
    pnpm mud:dev:stop
```
## gotcha's

see `./fluent/DEV-NOTES.md` for some troubleshooting tips.

## cleanup
when running locally you'll probably want to stop the local node and delete its state if you change the contracts a fair amount. just `rm -rf fluent/.local-node`

