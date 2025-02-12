# Blended MUD App's

For more details on blended execution you can check the [Building a Blended App](https://docs.fluentlabs.xyz/learn/developer-guides/building-a-blended-app) tutorial.

We are using this as a basis for a MUD interop, this interop is therefore a `mud-pie`.

A `mud-pie` is a MUD project that can work in a Blended environment.

A `mud-pie` as it stands is a monorepo and  based on MUD from [Lattice](https://mud.dev/introduction).

We leverage `forge` to build the ABI's for the contracts and to handle the deployment to a given chain. see [Foundry](https://github.com/foundry-rs/forge-std).

We run a hardhat node locally which is itself a docker container available as the fluent-node. This container is a node that runs a rWASM blended environment. See [hardhat-plugin](https://github.com/fluentlabs-xyz/hardhat-plugin).

This repo therefore combines `Forge` and `Hardhat` so you can deploy a `MUD` app to a `Fluent` chain

## dev setup requirement's

1. `mprocs`
We use `mprocs` as a multiplexor for local dev builds.

**note** the commands in the `package.json`: 
- `mud:dev:local` and
- `mud:dev:local:intel`

these commands start an instance of `mprocs` and run the dev stack locally.

`intel` based macs will need to install `mprocs` via `brew` or similar as the binary will not run via `pnpm`. If you like me are too cheap to buy a newer laptop until you've driven it to death you want to run `mud:dev:local:intel` see below. 

2. `Node`: version >= 20.3, we use 20.11.x
3. `pnpm` : version >= 9.x, we use 9.8.x
4. `docker`

## getting started

1. clone this repo. duh.
2. make sure you have node and pnpm and docker (as mentioned above)
3. from the root of the repo install the project dependencies:
    `pnpm install`
4. `cd` into the fluent directory:
    `cd fluent`
that's it folks! no not really...

### running a local deploy
`pnpm mud:dev:local` *nb if you are on an intel mac it is `pnpm mud:dev:local:intel`

### running a testnet deploy
`pnpm mud:dev:testnet` (or again `mud:dev:testnet:intel`

### running a test suite
`pnpm mud:test`

you should now see in your terminal a window with the running processes and if you navigate to `localhost:3000` you should see the web client.

**NOTE**

you will need to amend the `.env` files to add keys. see the files in `packages/contracts/.env` and `packages/client/.env`
also you will need to change the `VITE_CHAIN_ID` var in `packages/client/.env` to reflect the chain id for the chain. 1337 for local and 20993 for the fluent testnet.

### stopping local containers

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

when running locally you'll probably want to stop the local node and delete its state if you change the contracts a fair amount. just `rm -rf fluent/.local-node`

change the chain id in the client package to the relevant chain, `/packages/client/.env`

the .env files are in the repo. you'll want to remove them and NOT commit any provate keys in any kind of nen testing environment. this is a demo project. dont forget !
