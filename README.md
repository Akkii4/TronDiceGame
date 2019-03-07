#Tron Dice Betting Game

This is a two player Dice betting Game a player first bets his trx tokens and click on roll dice to get a random number,player will win if he/she gets larger number on dice than opponent. 

## Installations
```
$ npm install 
$ npm install -g tronbox
$ npm install -g tronweb
install tron link extension on chrome
```
## Instructions
```
$ tronbox compile --compile-all
Add Private key to tronbox.js from shasta test network account of TronLink.
$ tronbox migrate --reset --network shasta
copy the deployed contract address of 2_deploy_contract
paste the copied address at src/components/App/index.js in contract address
npm start 
checkout the dapp  at http://localhost:3000/
```
