# Blended MUD App's

For more details on blended execution you can check the [Building a Blended App](https://docs.fluentlabs.xyz/learn/developer-guides/building-a-blended-app) tutorial.

We are using this as a basis for a `p23` interop. A `p23` interop is itself a `mud-pie`.

A `mud-pie` is a MUD project that can work in a Blended environment. (that's why a `p23` is a `mud-pie`. duh)

`p23` as it stands in regard to Fluent deployments is a monorepo and the framework is based on MUD from [Lattice](https://mud.dev/introduction).

We leverage `forge` to build the ABI's for the contracts and to handle the deployment to a given chain. see [Foundry](https://github.com/foundry-rs/forge-std).

We run a hardhat node locally which is itself a docker container available as the fluent-node. This container contains the `fluent` rollup that is capable of working with WASM. See [hardhat-plugin](https://github.com/fluentlabs-xyz/hardhat-plugin)

## dev setup requirement's

1. `mprocs`
We use `mprocs` as a multiplexor for local dev builds.

**note** the commands in the `package.json` `mud:dev` and `mud:dev:intel`
these will start an instance of `mprocs` and run the dev stack locally

`intel` based macs will need to install `mprocs` via `brew` or similar as the binary will not run via `pnpm`. if you like me are too cheap to buy a newer laptop until you've driven it to death you want to run `mud:dev:intel` see below. 

2. `Node`: version >= 20.3, we use 20.11.x
3. `pnpm` : version >= 9.x, we use 9.8.x
4. `docker`

## getting started

1. clone this repo. duh.
2. from the root install the deps:
    `pnpm install`
3. `cd` into the fluent directory:
    `cd fluent`
thats it folks! no not really...

### running a local deploy
`pnpm mud:dev` *nb if you are on an intel mac it is `pnpm mud:dev:intel`

### running a remote deploy



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


## 13 hardhat default accounts for reference
 Fluent Node Genesis Accounts
 
 Special Accounts (0 ETH):
 0. 0x0000000000000000000000000000000000005210 - System account
 7. 0x43799b91FB174261EC2950ebb819c2CFf2983BdF - Special account
 
 Funded Accounts (100,000 ETH each) with their private keys:
 
 1. 0x14dC79964da2C08b23698B3D3cc7Ca32193d9955
    Private Key: 0x4bbbf85ce3377467afe5d46f804f221813b2bb87f24d81f60f1fcdbf7cbf4356
 
 2. 0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65
    Private Key: 0x47e179ec197488593b187f80a00eb0da91f1b9d0b13f8733639f19c30a34926a
 
 3. 0x1CBd3b2770909D4e10f157cABC84C7264073C9Ec
    Private Key: 0x47c99abed3324a2707c28affff1267e45918ec8c3f20b8aa892e8b065d2942dd
 
 4. 0x23618e81E3f5cdF7f54C3d65f7FBc0aBf5B21E8f
    Private Key: 0xdbda1821b80551c9d65939329250298aa3472ba22feea921c0cf5d620ea67b97
 
 5. 0x2546BcD3c84621e976D8185a91A922aE77ECEc30
    Private Key: 0xea6c44ac03bff858b476bba40716402b03e41b8e97e276d1baec7c37d42484a0
 
 6. 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC
    Private Key: 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a
 
 8. 0x70997970C51812dc3A010C7d01b50e0d17dc79C8
    Private Key: 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
 
 9. 0x71bE63f3384f5fb98995898A86B02Fb2426c5788
    Private Key: 0x701b615bbdfb9de65240bc28bd21bbc0d996645a3dd57e7b12bc2bdf6f192c82
 
 10. 0x8626f6940E2eb28930eFb4CeF49B2d1F2C9C1199
     Private Key: 0xdf57089febbacf7ba0bc227dafbffa9fc08a93fdc68e1e42411a14efcf23656e
 
 11. 0x90F79bf6EB2c4f870365E785982E1f101E93b906
     Private Key: 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6
 
 12. 0x976EA74026E726554dB657fA54763abd0C3a0aa9
     Private Key: 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e
 
 13. 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc
     Private Key: 0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba

