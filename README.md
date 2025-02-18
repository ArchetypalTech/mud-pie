## Dev Requirements

1. `Node`: `version == 20.11.0` (NOTE `23` WILL NOT WORK)
2. `pnpm` : `version == 9.15.0`
3. `docker` : we have tested with `27.3.1`
4. `mprocs` (installed via `pnpm` but if on an intel mac it must be installed seperately: `brew install mprocs`)

Please be aware that these versions **matter**, latest will not work.

We have made a guide for this:

see [SETUP.md](https://github.com/ArchetypalTech/mud-pie/blob/main/SETUP.md)

## 📦 Install repo with `pnpm`

1. Install the dependencies listed above.
2. Clone the repo
3. `cd mud-pie`
4. `pnpm install`

### 🚀 Running a local deploy
```pnpm mud:dev:local``` 

**nb** if you are on an intel mac it is 

```pnpm mud:dev:local:intel```

Navigate to `localhost:3000` to see the running client.

### 🚀 Running a testnet deploy
```pnpm mud:dev:testnet``` 

(or again `mud:dev:testnet:intel`)

Navigate to `localhost:3000` to see the running client.

**NOTE**
you will need to amend the `.env` files to add keys. 

see files in [packages/contracts/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/contracts/.env) and [packages/client/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/client/.env)

You will also need to change the `VITE_CHAIN_ID` var in `packages/client/.env` to reflect the chain id for the chain. 1337 for local and 20993 for the fluent testnet.

see file [packages/client/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/client/.env)

### 🚀 Running a test suite
`pnpm mud:test`

## Expected Results
The commands open a `mprocs` terminal with the running processes.
 
Use the up and down arrows to see the output from each process and `Ctrl-U`/`Ctrl-D` to scroll through the respective outputs

![mud-pie-tmuxup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-tmuxup-mac-01.png)

![mud-pie-clientup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-clientup-mac-01.png)

Your increment counter clicks show up as transactions on the block explorer.

Your MUD fluent deploy is working! Congrats.

## Stopping local containers

`mprocs` doesnt seem to do this cleanly so:

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
To clean up the local nodes state 
```sh
rm -rf fluent/.local-node
```

## 🔧Available Scripts
the follwowing scripts are avilable via pnpm from the `fluent` directory:

Script | Description
-------|------------
`mud:dev:local` | runs a local Fluent node, builds contracts, deploys for node, runs local web server
`mud:dev:testnet` | builds contracts, deploys for testnet, runs local web server
`mud:dev:stop` | stops the running local fluent node container
`mud:dev:local:intel` | (for intel macs) runs a local Fluent node, builds contracts, deploys for node, runs local web server
`mud:dev:testnet:intel` | (for intel macs) builds contracts, deploys for testnet, runs local web server
