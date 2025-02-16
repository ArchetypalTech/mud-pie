
# Blended MUD Apps

For more details on blended execution you can check the [Building a Blended App](https://docs.fluentlabs.xyz/learn/developer-guides/building-a-blended-app) tutorial.

We are using this as a basis for a MUD interop, this interop is therefore a `mud-pie`.

A `mud-pie` is a MUD project that can work in a Blended environment.

A `mud-pie` as it stands is a monorepo and  based on MUD from [Lattice](https://mud.dev/introduction).

We leverage `forge` to build the ABI's for the contracts and to handle the deployment to a given chain. see [Foundry](https://github.com/foundry-rs/forge-std).

We run a hardhat node locally which is itself a docker container available as the fluent-node. This container is a node that runs a rWASM blended environment. See [hardhat-plugin](https://github.com/fluentlabs-xyz/hardhat-plugin).

This repo therefore combines `Forge` and `Hardhat` so you can deploy a `MUD` app to a `Fluent` chain

## Dev Setup Requirements

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

## Getting Started

1. Clone this repo.
2. Make sure you have node and pnpm and docker (as mentioned above)
3. From the root of the repo install the project dependencies:
    `pnpm install`
4. `cd` into the fluent directory:
    `cd fluent`
that's it folks! no not really...

### Running a local deploy
`pnpm mud:dev:local` *nb if you are on an intel mac it is `pnpm mud:dev:local:intel`

### Running a testnet deploy

**NOTE**

you will need to amend the `.env` files to add keys. see the files in `packages/contracts/.env` and `packages/client/.env`
also you will need to change the `VITE_CHAIN_ID` var in `packages/client/.env` to reflect the chain id for the chain. 1337 for local and 20993 for the fluent testnet.

`pnpm mud:dev:testnet` (or again `mud:dev:testnet:intel`)

### Running a test suite
`pnpm mud:test`

you should now see in your terminal a window with the running processes and if you navigate to `localhost:3000` you should see the web client.

## Expected Results

Eh voila, you should see the node and/or contracts up, and when you avigate to localhost you should se the client test increment counter incrementing when clicked, and this then posts txs to the testnet or the chainid you have set.

`pnpm mud:dev:local`

![[mud-pie-tmuxup-mac-01.png]]
screen of mac tmux NODE UP CONTRACTS UP CLIENT UP

![[mud-pie-clientup-mac-01.png]]
screen of client at local host with increment counter working


`pnpm mud:dev:testnet` (having replaced private keys on .env files as above)

//TODO (possibly just point to guide / ore verbose install instructions to keep readme brief)
screen of mac tmux CONTRACTS UP CLIENT UP

//TODO
screen of client at local host with increment counter working

//TODO
screen of block explorer showing those transactions

The above works

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

when running locally you'll probably want to stop the local node and delete its state if you change the contracts a fair amount. just `rm -rf fluent/.local-node`

change the chain id in the client package to the relevant chain, `/packages/client/.env`

the .env files are in the repo. you'll want to remove them and NOT commit any private keys in any kind of non testing environment. this is a demo project. Don't forget!

## ## If you have dependency issues

If dependency errors occur, clean packages and clear Docker.

### Clean packages and node_modules

There are 4 package.json files

The one in the root of the project and:
`/package.json`
`fluent/package.json`
`packages/client/package.json`
`packages/contracts/package.json`

this means that pnpm will create a node_modules folder in each of these paths 

`/node_modules`
`fluent/node_modules`
`packages/client/node_modules`
`packages/contracts/node_modules`

If you want to reset the dependency tree you need to remove all of these folders

You will possibly also have a corresponding pnpm-lock.yaml file in these places:

`/pnpm-lock.yaml`
`fluent/pnpm-lock.yaml`
`packages/client/pnpm-lock.yaml`
`packages/contracts/pnpm-lock.yaml`

Remove these as well.

### to re install the dependencies:

From the root run `pnpm install`

This should reinstall everything the project needs.


### Clear containers

Sometimes dcoker containers can cause conflicts. To see if there is a image hanging or what have you you can use:

`docker ps`

kill anything running

`docker stop whatever_the_name_is`

the local node also keeps its own files (which is handy)

you may want to clean that up as well

`/fluent/.local_node`

so then:

stop the container (if it’s running)

remove `/fluent/.local_node`



