# Why This Stack

This lab uses a deliberately small EVM/Web3 stack so each layer is visible and understandable.

## React + Vite

React is already familiar territory and keeps the learning focus on Web3 concepts instead of learning an entirely new frontend framework. Vite provides a lightweight development setup with minimal ceremony.

## JavaScript

JavaScript keeps the frontend approachable and makes it easier to inspect wallet calls, contract calls, transaction objects, and errors directly.

TypeScript can be introduced later if stronger type safety becomes useful.

## Solidity

Solidity is the most common smart-contract language in the Ethereum Virtual Machine ecosystem. The contract in this lab will stay intentionally small so concepts such as `msg.sender`, storage, events, and transactions are easy to trace.

## Hardhat

Hardhat gives us a local development blockchain and contract tooling. Starting locally means:

- no real cryptocurrency is needed
- mistakes cost nothing
- the blockchain can be reset at any time
- contract deployment can be repeated quickly
- debugging is easier

A public test network can come later, after the local flow makes sense.

## ethers.js

ethers.js provides the bridge between the browser application, the wallet, and the deployed contract. It lets the frontend create a provider, obtain a signer, call contract functions, and wait for transactions to be confirmed.

## Browser wallet

A browser wallet demonstrates one of the biggest differences between Web2 and Web3 authentication and authorization.

Instead of sending a username and password to our server, a wallet can expose a public address and sign a transaction cryptographically.

## What we are deliberately not using yet

This first lab does not need:

- NFTs
- custom tokens
- DeFi protocols
- IPFS
- a production blockchain deployment
- a backend API
- a traditional database
- expensive infrastructure

Those technologies can be explored later if a learning goal actually requires them.

## Mental model

### Traditional Web2 write

```text
React -> API -> authorization -> database write
```

### This Web3 lab

```text
React -> wallet signature -> smart contract -> blockchain state
```

The frontend still looks like a normal web application. The important difference is where authority and state live.
