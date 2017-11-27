# BokkyPooBah's Token Repository

## BitFwd Token

Deployed Nov 22 2017, and transferred ownership to 0x8f629ee1659E89958678F716a4f452B20fCbD8c5 .

* [SafeMath library](contracts/SafeMath.sol) deployed to [0x8a162Ee391Dc6103Da716c56C017D08391c48423](https://etherscan.io/address/0x8a162Ee391Dc6103Da716c56C017D08391c48423#code)
* [BitFwdToken](contracts/BitFwdToken.sol) deployed to [0xe199C41103020a325Ee17Fd87934dfe7Ac747AD4](https://etherscan.io/address/0xe199C41103020a325Ee17Fd87934dfe7Ac747AD4#code)

<br />

<hr />

## LEIA Save Princess Leia Peach Rainbow Vomit Cat ICO Token

* SafeMath library deployed to [0x7c9801326a2A8394e45dBAcC115c975381A693aE](https://etherscan.io/address/0x7c9801326a2A8394e45dBAcC115c975381A693aE)

* [SavePrincessLeiaPeachRainbowVomitCatICOToken.sol](contracts/SavePrincessLeiaPeachRainbowVomitCatICOToken.sol) deployed to [0x96E2fFDdd5aaB73dEf197df5fDC4653a72976837](https://etherscan.io/address/0x96E2fFDdd5aaB73dEf197df5fDC4653a72976837)

<br />

<hr />

## SEANTest Token On Ropsten

* [SeanTestToken.sol](contracts/SeanTestToken.sol) deployed to [0x4d61ca45e4c909f79be951210c34e5d6ed5f59cc](https://ropsten.etherscan.io/address/0x4d61ca45e4c909f79be951210c34e5d6ed5f59cc)

<br />

<hr />

## How To Deploy Using Remix And MyEtherWallet Without Library

If deploying on Ropsten, select the Ropsten network in MEW, and use the Ropsten EtherScan

* Compile code in Remix
  * Load code in [http://remix.ethereum.org/](http://remix.ethereum.org/)
  * In the Compile tab, select the token contract
  * Click on Details
  * Copy the Bytecode
* Deploy using MyEtherWallet
  * Browse [https://www.myetherwallet.com/](https://www.myetherwallet.com/)
  * Select the Contracts tab
  * Click on Deploy Contract
  * Paste the Bytecode into the Byte Code field
  * Access your wallet, generate the transaction and send the transaction
* Verify in EtherScan
  * Browse [https://etherscan.io/](https://etherscan.io/)
  * Search for the latest transaction in your account
  * Click on the address of the newly deployed contract
  * Verify the source
    * Make sure the compiler version matches the Remix compiler version
    * Make sure the optimisation flag matches the Remix optimiser flag setting

<br />

<hr />

## How To Deploy Using Remix And MyEtherWallet With Library

* Perform the steps above initially for the SafeMath library unit
* Perform the steps above for the token contract, but
  * Copy the bytecode from Remix, replace all occurrence of `__*__` with the deployment address of the SafeMath library, without the `0x` prefix
  * Deploy the bytecode
* When verifying in EtherScan
  * Add the library `:SafeMath` with the address of the SafeMath library

<br />

<hr />

## Airdropping Tokens

A sample script is available in [scripts/airdropLEIA.sh](scripts/airdropLEIA.sh)

<br />

<br />

Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2017. The MIT Licence.