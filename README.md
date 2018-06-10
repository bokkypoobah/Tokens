# BokkyPooBah's Token Repository

A collection of token contracts, and how to deploy these contracts using Remix and MyEtherWallet.

<br />

<hr />

## Table Of Contents

* [Mainnet Token Contracts](#mainnet-token-contracts)
* [BitFwd Token](#bitfwd-token)
* [LEIA Save Princess Leia Peach Rainbow Vomit Cat ICO Token](#leia-save-princess-leia-peach-rainbow-vomit-cat-ico-token)
* [SEANTest Token On Ropsten](#seantest-token-on-ropsten)
* [Fixed Supply Token](#fixed-supply-token)
* [My Token](#my-token)
* [How To Deploy Using Remix And MyEtherWallet Without Libraries](#how-to-deploy-using-remix-and-myetherwallet-without-libraries)
* [How To Deploy Using Remix And MyEtherWallet With A Library](#how-to-deploy-using-remix-and-myetherwallet-with-library)
* [Airdropping Tokens](#airdropping-tokens)
* [Registering Your Token Contract](#registering-your-token-contract)
* [References](#references)

<br />

<hr />

## Mainnet Token Contracts

See [Mainnet-token-contracts-20180610](Mainnet-token-contracts-20180610) for a list of token contracts, where the addresses are from EtherDelta's token contract list @ June 10 2018, and the associated source code has been scraped from EtherScan's validated source code listing.

<br />

<hr />

## BitFwd Token

A token that is mintable by the owner, until the `disableMinting()` is executed. This token contract requires the *SafeMath* library
to be deployed before deploying the main token contract.

Deployed Nov 22 2017, and transferred ownership to 0x8f629ee1659E89958678F716a4f452B20fCbD8c5 .

* [SafeMath library](contracts/SafeMath.sol) deployed to [0x8a162Ee391Dc6103Da716c56C017D08391c48423](https://etherscan.io/address/0x8a162Ee391Dc6103Da716c56C017D08391c48423#code)
* [BitFwdToken](contracts/BitFwdToken.sol) deployed to [0xe199C41103020a325Ee17Fd87934dfe7Ac747AD4](https://etherscan.io/address/0xe199C41103020a325Ee17Fd87934dfe7Ac747AD4#code)

<br />

<hr />

## LEIA Save Princess Leia Peach Rainbow Vomit Cat ICO Token

A crowdsale/token contract that generates 1,000 tokens per ETH received, but all contributed ETH is returned to the calling account immediately.
This crowdsale/token contract requires the *SafeMath* library to be deployed before deploying the main crowdsale/token contract.

* SafeMath library deployed to [0x7c9801326a2A8394e45dBAcC115c975381A693aE](https://etherscan.io/address/0x7c9801326a2A8394e45dBAcC115c975381A693aE)
* [SavePrincessLeiaPeachRainbowVomitCatICOToken.sol](contracts/SavePrincessLeiaPeachRainbowVomitCatICOToken.sol) deployed to [0x96E2fFDdd5aaB73dEf197df5fDC4653a72976837](https://etherscan.io/address/0x96E2fFDdd5aaB73dEf197df5fDC4653a72976837)

<br />

<hr />

## SEANTest Token On Ropsten

A token contract that premines 100,000 tokens and assigns these tokens to a particular account. No library linking is required
for this token contract as the `library SafeMath` has been converted to `contract SafeMath`.

* [SeanTestToken.sol](contracts/SeanTestToken.sol) deployed to [0x4d61ca45e4c909f79be951210c34e5d6ed5f59cc](https://ropsten.etherscan.io/address/0x4d61ca45e4c909f79be951210c34e5d6ed5f59cc)

<br />

<hr />

## Fixed Supply Token

A fixed supply token contract that allocates 1,000,000 FIXED tokens to the token contract owner on deployment. No library linking is required.

* [FixedSupplyToken.sol](contracts/FixedSupplyToken.sol)

See the instruction directly below to deploy this contract to the Ropsten Testnet.

<br />

<hr />

## My Token

A token contract that accepts ETH and generates 1,000 tokens per ETH with a 20% bonus in the first week. No library linking is required
for this token contract as the `library SafeMath` has been converted to `contract SafeMath`.

* [MyToken.sol](contracts/MyToken.sol)

See the instruction directly below to deploy this contract to the Ropsten Testnet.

<br />

<hr />

## How To Deploy Using Remix And MyEtherWallet Without Libraries

If deploying on Ropsten, select the Ropsten network in MEW, and use the Ropsten EtherScan

* Compile code in Remix
  * Load code in [http://remix.ethereum.org/](http://remix.ethereum.org/)
  * In the Compile tab, select the token contract unit
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

## How To Deploy Using Remix And MyEtherWallet With A Library

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

<hr />

## Registering Your Token Contract

The Parity registry is a do-it-yourself token registration. MEW and EtherScan requires someone to process your request, so restrict your
request to more important tokens.

* Parity (do-it-youself)
  * [A Quick Look At Parity’s Token Registry Smart Contract](https://www.bokconsulting.com.au/blog/a-quick-look-at-paritys-token-registry-smart-contract/)
  * [Adding an image to your token on Parity](https://medium.com/@Dave_Appleton/adding-an-image-to-your-token-on-parity-516fc8b51cab)
* MyEtherWallet
  * [How to Add a Custom Token to MyEtherWallet](https://myetherwallet.github.io/knowledge-base/send/adding-new-token-and-sending-custom-tokens.html)
  * [Adding your Token as a Default Token](https://myetherwallet.github.io/knowledge-base/tokens/token-creators-add-your-token-to-myetherwallet.html)
* EtherScan
  * [How do I get listed on Etherscan's Token Marketcap list, https://etherscan.io/tokens?](https://etherscancom.freshdesk.com/support/solutions/articles/35000022151-how-do-i-get-listed-on-etherscan-s-token-marketcap-list-https-etherscan-io-tokens-)

<br />

<hr />

## References

* [Remix - Solidity IDE](http://remix.readthedocs.io/en/latest/)
* [Solidity](http://solidity.readthedocs.io/en/latest/)
* [Ethereum Smart Contract Security Best Practices](https://consensys.github.io/smart-contract-best-practices/)
* [Ethereum.StackExchange.com](https://ethereum.stackexchange.com/)

<br />

<br />

Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2017. The MIT Licence.