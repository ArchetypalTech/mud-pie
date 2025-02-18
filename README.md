# MUD <> Fluent
## 🚧 Requirements
### 🪂 Detailed instructions: [SETUP.md](https://github.com/ArchetypalTech/mud-pie/blob/main/SETUP.md)

Package | Version
------- | -------
`node` | 20.11.90
`pnpm` | 9.15.5
`docker` | 27.3.1


## 📦 Initial Repo Setup

1. Install the dependencies listed in Requirements, verify correct version.
2. Clone the repo
3. Go to cloned directory
```bash
cd mud-pie
```
4. Install dependencies
```bash
pnpm install
```

## 🏠 Local Deployment
Navigate to the `mud-pie/fluent/` dir, then run:
```bash
pnpm run mud:dev:local
``` 

#### Intel mac:
```bash
pnpm run mud:dev:local:intel
```

Point your browser at [http://localhost:3000](http://localhost:3000) to see the running client.

## 🏥 Troubleshooting

### 🚾 Stopping local containers

After running the scripts you will have to manually close the docker.

Stop the containers with:
```sh
docker stop $(docker ps -q --filter ancestor=ghcr.io/fluentlabs-xyz/fluent:latest)
```
or using `pnpm`
```sh
pnpm run mud:dev:stop
```

see `./fluent/DEV-NOTES.md` for some troubleshooting tips.

### 🧹Cleanup
To clean up the local nodes state 
```sh
rm -rf fluent/.local-node
```

### 🐛 Intel Mac
On an Intel Mac `mprocs` must be installed seperately: 
```bash
brew install mprocs
```

## 🔍 Expected Results
The commands open a `mprocs` terminal with the running processes.
 
Use the up and down arrows to see the output from each process and `Ctrl-U`/`Ctrl-D` to scroll through the respective outputs

![mud-pie-tmuxup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-tmuxup-mac-01.png)

![mud-pie-clientup-mac-01.png](https://github.com/ArchetypalTech/mud-pie/blob/main/mud-pie-clientup-mac-01.png)

Your increment counter clicks show up as transactions on the block explorer.

Your MUD fluent deploy is working! Congrats.



# 🔧 Available Scripts
the follwowing scripts are avilable via pnpm from the `fluent` directory:

Script | Description
-------|------------
`mud:dev:local` | runs a local Fluent node, builds contracts, deploys for node, runs local web server
`mud:dev:testnet` | builds contracts, deploys for testnet, runs local web server
`mud:dev:stop` | stops the running local fluent node container
`mud:dev:local:intel` | (for intel macs) runs a local Fluent node, builds contracts, deploys for node, runs local web server
`mud:dev:testnet:intel` | (for intel macs) builds contracts, deploys for testnet, runs local web server

## 🚀 Testnet Deployment

Deployment to Testnet requires setting the correct keys in `.env` [packages/contracts/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/contracts/.env) and [packages/client/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/client/.env).

You will also need to change the `VITE_CHAIN_ID` var in `packages/client/.env` [packages/client/.env](https://github.com/ArchetypalTech/mud-pie/blob/main/packages/client/.env) to reflect the chain id for the chain (1337 for local and 20993 for the fluent testnet)

Navigate to the `mud-pie/fluent/` dir, then run:
```bash
pnpm run mud:dev:testnet
``` 

#### Intel mac:
```bash
pnpm run mud:dev:testnet:intel
```

Point your browser at [http://localhost:3000](http://localhost:3000) to see the running client.

## 🧪 Running Tests
Navigate to the `mud-pie/fluent/` dir, then execute:
```bash
pnpm mud:test
```
