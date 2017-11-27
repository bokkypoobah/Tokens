#!/bin/sh
# ----------------------------------------------------------------------------------------------
# Extract Token Balances
#
# Based on https://github.com/BitySA/whetcwithdraw/tree/master/daobalance
#
# Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2017. The MIT Licence.
# ----------------------------------------------------------------------------------------------

OUTPUT=airdropLEIA.txt

geth attach << EOF | tee $OUTPUT

var sendingAddress = "0x000001f568875f378bf6d170b790967fe429c81a";
var nullAddress = "0x0000000000000000000000000000000000000000";

var setTokenAddress = "0xe06eda7435ba749b047380ced49121dde93334ae";
var setTokenABI = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"tokens","type":"uint256"}],"name":"approve","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"startDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"from","type":"address"},{"name":"to","type":"address"},\
  {"name":"tokens","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"_totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"bonusEnds","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"tokenOwner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"acceptOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"to","type":"address"},{"name":"tokens","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"endDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"tokens","type":"uint256"},{"name":"data","type":"bytes"}],"name":"approveAndCall","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"newOwner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"tokenAddress","type":"address"},{"name":"tokens","type":"uint256"}],"name":"transferAnyERC20Token","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"tokenOwner","type":"address"},{"name":"spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"tokens","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"tokenOwner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":false,"name":"tokens","type":"uint256"}],"name":"Approval","type":"event"}];
var setToken = web3.eth.contract(setTokenABI).at(setTokenAddress);
var setCreationBlock = 4219770;

var cryptoCatsAddress = "0xa185b9e63fb83a5a1a13a4460b8e8605672b6020";
var cryptoPunksAddress = "0xb47e3cd837dDF8e4c57F05d70Ab865de6e193BBB";
var cryptoPunksABI = [{"anonymous":false,"inputs":[{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"punkIndex","type":"uint256"}],"name":"Assign","type":"event"}];
var cryptoCats = web3.eth.contract(cryptoPunksABI).at(cryptoCatsAddress);
var cryptoCatsCreationBlock = 4618965;
cryptoCats;

var leiaAddress = "0x96E2fFDdd5aaB73dEf197df5fDC4653a72976837";
var leiaABI = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"tokens","type":"uint256"}],"name":"approve","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"startDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"from","type":"address"},{"name":"to","type":"address"},{"name":"tokens","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},\
  {"constant":true,"inputs":[],"name":"_totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"bonusEnds","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"tokenOwner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"acceptOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"to","type":"address"},{"name":"tokens","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},\
  {"constant":true,"inputs":[],"name":"endDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"tokens","type":"uint256"},{"name":"data","type":"bytes"}],"name":"approveAndCall","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"newOwner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"tokenAddress","type":"address"},{"name":"tokens","type":"uint256"}],"name":"transferAnyERC20Token","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"tokenOwner","type":"address"},{"name":"spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},\
  {"constant":false,"inputs":[{"name":"_newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"tokens","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"tokenOwner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":false,"name":"tokens","type":"uint256"}],"name":"Approval","type":"event"}];
var leiaCreationBlock = 4622030;

var blockathonAddresses = ["0x363Be94fEef35EC75597DE9C601AfDE75B861b21", "0xB662B6F03BcB17551487873F18565972b1Bb31a6", "0x48CD78dD78F9BfcE88CF3A5fCa4a733270a8B702", "0x82F2802eB9a08Ce53ca25c34c62E04142DA5Ab60", "0xF7477a4db095efbb2e35F7e2A6cB26Eb727E8EDd", "0xbb9462dd0519ca39ed561bc394901bcd7971294d", "0x3ad202150c31e2bf516b232efe7b1d067e4d252e", "0x88884e35d7006ae84efef09ee6bc6a43dd8e2bb8", "0xf47dcb446db7822aff28df764f56a160b67357d8", "0x2b2160605097c08a9fed6938e49cbf99ff4fb845", "0x0b2ebb3b19cecde7d29c5c61527df19fee4475e9", "0x978e291bedbaa40954b3c68ec0e02ca1aed28cff", "0x9468d3c4751bdb935e6dc2437d36bf13886e39ff", "0x837ff7edfedca7ea59458ee48eecb799f4b9b34d", "0xf55e67f0329cf4792318441f5394f52e3501cd42", "0xd021071fafc43cd1da1557e85f37f1f6fc975ff1", "0xa9abbfbd6efc3e6620a0a6698860882209fd23ec", "0x06bc22ab49b34739829e7fcd5c35af7f7ec207b2", "0xe64078aaf2bb01b7dca49d0257a43652f03813f7", "0x60f16e6154c674b7219361671330490dd297f4c0", "0x998c1f93bcdb6ff23c10d0dc924728b73be2ff9f", "0x4532874375f2417abadbde9003a7a468d4b926bd", "0x59d740a05a0cb90f9cadc2b237ff97b600de28da", "0x8c21d82e9432be39624aec4d5937e02ad00a4cb4", "0x6ce3cb7affc304cf19ffe436efd31fc515ae2ee1", "0xeaa84f4da173cbacf947b8fc6349a00e4341a1c1", "0x4b4cb02c7900a67bd9887582ebef59fc3c37a43d", "0x38e73fae549aea2b2db1cca545442d2dfd3f7bbf", "0x11213da74160b9e8764774aaa6035e20ad717c35", "0x2adcd4ac8fe9b59e17aba2d0073f863521e2d989", "0x7cdbc624be998aa4857c7695489de74f880e36a8", "0xf9aa7f71cb517f3613e66f439d4093f29b42a632", "0x837ff7edfedca7ea59458ee48eecb799f4b9b34d", "0xeaf686e2f5923fa5a36d8cca88d34b47d6999c26", "0x55ace8adcfd3d2e323abbafbb6be12e5d9ae0b53", "0xe1b3f7e470a39767905ee5f4a5bdb963fdef85ea", "0x48cd78dd78f9bfce88cf3a5fca4a733270a8b702", "0xc4a6117ff30e00bc0bfb6e6808d8800658a8bca0", "0xd95c02d461f6b1fac5afde929d9bc92611472081", "0x113fc9ce309e767f653477baddb0e2d8fc2e1541", "0xbc850a3dbecacfd32e8b8c9e37d95cb8f4771cdc", "0x296bdb5e7ef5188a02d5506169f52b002211dc63", "0x0814559e52798667eaafefac4dfd8cfa751fa88f", "0xefeed8b10e41165656033fea6cb4d27ebd2fcfc9", "0x3c6dab5a961651c7ae840b2eb4a34e99734697dc", "0x000001f568875f378bf6d170b790967fe429c81a", "0x4499a71054d728a5b851df2d2d06efe6c6f54274", "0x6ce0ce7095ca874c3ae1fa22061a3e970f41e495", "0x9bb4b6e047f0f044b0ffdbae01ee47d3a65d5a27", "0x772868b4a3ee931caae8c26dbe9e2c0ad359215e", "0xf0fec58398c8b34bf6a2a3a82e9d377067c01c57"];

var lastBlock = eth.getBlock("latest").number;
lastBlock;

function getSetAccounts() {
  var accounts = {};
  var transferEventsFilter = setToken.Transfer({}, {fromBlock: setCreationBlock, toBlock: lastBlock});
  var transferEvents = transferEventsFilter.get();
  for (var i = 0; i < transferEvents.length; i++) {
    var transferEvent = transferEvents[i];
    console.log(JSON.stringify(transferEvent));
    accounts[transferEvent.args.from] = 1;
    accounts[transferEvent.args.to] = 1;
  }
  return Object.keys(accounts);
}

function getCryptoCatAccounts() {
  var accounts = {}
  var assignFilter = cryptoCats.Assign({}, {fromBlock: cryptoCatsCreationBlock, toBlock: lastBlock});
  var assignEvents = assignFilter.get();
  for (var i = 0; i < assignEvents.length; i++) {
    var assignEvent = assignEvents[i];
    console.log(JSON.stringify(assignEvent));
    accounts[assignEvent.args.to] = 1;
  }
  return Object.keys(accounts);
}

console.log("Blockathon: " + JSON.stringify(blockathonAddresses));

// Get CryptoCats account list
var cryptoCatsAccounts = getCryptoCatAccounts();
console.log("CryptoCats: " + JSON.stringify(cryptoCatsAccounts));

// Get SET account list
var setAccounts = getSetAccounts();
console.log("SET: " + JSON.stringify(setAccounts));

// Add CryptoCats and SET account to manually compiled Blockathon addresses
var allAccounts1 = blockathonAddresses.concat(cryptoCatsAccounts);
var allAccounts = allAccounts1.concat(setAccounts);
console.log("ALL: " + JSON.stringify(allAccounts));

// Remove duplicate elements
var unique = allAccounts.filter(function(elem, index, self) {
    return index == self.indexOf(elem);
});
console.log("UNIQUE: " + JSON.stringify(unique));

// Array element remove function
Array.prototype.remove = function(elem, all) {
  for (var i=this.length-1; i>=0; i--) {
    if (this[i] === elem) {
        this.splice(i, 1);
        if(!all)
          break;
    }
  }
  return this;
};

// Remove null address
var target = unique.remove(nullAddress);
// Remove the sending address
target = target.remove(sendingAddress);
console.log("TARGET: " + JSON.stringify(target));

// leia decimals same as ETH
// cost web3.fromWei(eth.getBalance(eth.accounts[26], 4631480)-eth.getBalance(eth.accounts[26], 4632550), "ether")
// "0.005109423100002304" => AUD 3.22 @ 632.04 ETH/AUD
var airdropAmount = new BigNumber(888).shift(18);
var leia = eth.contract(leiaABI).at(leiaAddress);
for (var i = 0; i < target.length; i++) {
  var balance = leia.balanceOf(target[i]);
  console.log(i + " " + target[i] + " " + balance);
  if (balance.lt(airdropAmount)) {
    var amount = airdropAmount.sub(balance);
    console.log("  - sending " + amount + " " + amount.shift(-18) + " to " + target[i]);
    var tx = leia.transfer(target[i], amount, {from: eth.accounts[26], gas: 100000, gasPrice: web3.toWei(0.5, "gwei")});
    console.log("  - tx " + tx);
  }
}

EOF

cat $OUTPUT
