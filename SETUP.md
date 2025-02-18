# Setting up a dev environment for Fluent

## requirements

Package | Version | What
------- | ------- | ----
`node` | 20.11.0 | node server 
`pnpm` | 9.15.5 | a package manager 

We will cover the setup for MacOS in this document.

To manage node use `nodenv` or `nvm`
## nodenv
[nodenv installation](https://github.com/nodenv/nodenv?tab=readme-ov-file#installation)

install:
```sh
brew install nodenv
```

shell integration:
```sh
nodenv init
```

follow the onscreen instructions.

test the install
```sh
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/main/bin/nodenv-doctor | bash
```

## node
this needs to be run in the cloned repo at the repo's root

```sh
nodenv install 20.11.0
```

set the node for the repo

```sh
node local 20.11.0
```

rehash the shims to be sure

```sh
nodenv rehash
```

test that you have the correct node

```sh
node -v
```

you should see: 

`v20.11.0`

## nvm
[nvm installation](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

install nvm:
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

install node:
```sh
nvm install 20
```

set node version for the repo:
```sh
nvm use 20
```

## pnpm
[pnpm installation](https://pnpm.io/installation)

we use `corepack` to manage this. It's bundled in with `node`

make sure it is up to date:

```sh
npm install --global corepack@latest
```

install `pnpm`

```sh
corepack enable
corepack prepare pnpm@9.15.5 --activate
```

check the version
```sh
pnpm --version
```

you should see: 

`9.15.5`


you should now have a dev environment isolated from system installations under the root of the fluent repo you cloned.









