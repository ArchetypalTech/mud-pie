## 10 Steps to use this repo to deploy a MUD project via hardhat to fluent

pull repo 
run pnpm install
cd to /fluent
run pnpm mud:dev // runs a local deployment

to do a remote / devnet deploy
add a private key to the ENV file // (make sure theo have ENV in git ignore 
pnpm mud:deploy:fluent
