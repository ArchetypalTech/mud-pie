
# Blended MUD Apps

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

## Running a local deploy
`pnpm mud:dev:local` *nb if you are on an intel mac it is `pnpm mud:dev:local:intel`

## Running a testnet deploy

**NOTE**

you will need to amend the `.env` files to add keys. see the files in `packages/contracts/.env` and `packages/client/.env`
also you will need to change the `VITE_CHAIN_ID` var in `packages/client/.env` to reflect the chain id for the chain. 1337 for local and 20993 for the fluent testnet.

`pnpm mud:dev:testnet` (or again `mud:dev:testnet:intel`)

## Running a test suite
`pnpm mud:test`

you should now see in your terminal a window with the running processes and if you navigate to `localhost:3000` you should see the web client.

## Expected Results

Eh voila, you should see the node and/or contracts up, and when you avigate to localhost you should se the client test increment counter incrementing when clicked, and this then posts txs to the testnet or the chainid you have set.

`pnpm mud:dev:local`

![mud-pie-tmuxup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-tmuxup-mac-01.png)

screen of mac tmux NODE UP CONTRACTS UP CLIENT UP

![mud-pie-clientup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-clientup-mac-01.png)

screen of client at local host with increment counter working

You may get errors to do with any extensions you have and a 404 for the favicon.ico, these can be ignored

Your MUD fluent deploy is working! Congrats.

`pnpm mud:dev:testnet` (having replaced private keys on .env files as above)

![screen of block explorer showing those transactions](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-blockexpl-linux-falsepositive-01.png)

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
## Cleanup

When running locally you'll probably want to stop the local node and delete its state if you change the contracts a fair amount. just `rm -rf fluent/.local-node`

change the chain id in the client package to the relevant chain, `/packages/client/.env`

## Security Notes
The .env files are in the repo. you'll want to remove them and NOT commit any private keys in any kind of non testing environment. this is a demo project. Don't forget!

