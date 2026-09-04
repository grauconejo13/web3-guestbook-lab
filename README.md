# web3-guestbook-lab

A small Web3 learning lab for understanding how a browser app can interact with a smart contract and blockchain state.

This repository is intentionally a **demo**, not a production dApp. The goal is to learn the Web3 development flow one layer at a time.

## Learning goals

By the end of this lab, the app should be able to:

- connect to a browser wallet
- read the connected wallet address
- submit a short guestbook message
- write that message through a Solidity smart contract
- read stored messages back from the contract
- display transaction states in the frontend
- explain what is happening differently from a normal Web2 application

## Planned stack

- **React + Vite** — frontend UI
- **JavaScript** — application logic
- **Solidity** — smart contract
- **Hardhat** — local blockchain development and contract tooling
- **ethers.js** — frontend-to-blockchain interaction
- **MetaMask or another EVM wallet** — signing transactions

See [`docs/why-this-stack.md`](docs/why-this-stack.md) for the reasoning behind these choices.

## Architecture

```text
Browser / React UI
       |
       v
Browser Wallet
       |
       v
ethers.js
       |
       v
Guestbook.sol
       |
       v
Local Hardhat Network
       |
       v
Blockchain State
```

## Initial project structure

```text
web3-guestbook-lab/
├── contracts/
│   └── Guestbook.sol
├── docs/
│   └── why-this-stack.md
├── frontend/
│   └── README.md
└── README.md
```

## First milestone

The first working version will do only four things:

1. Connect a wallet.
2. Submit a message.
3. Store the message on-chain.
4. Read and display stored messages.

No tokens. No NFTs. No real money. No production deployment yet.

## Why a guestbook?

A guestbook is small enough to understand end-to-end while still demonstrating the central Web3 distinction between a normal database write and a signed blockchain transaction.

In a traditional web app, a backend server would normally validate a request and write the message to a database. In this lab, the wallet signs a transaction and the smart contract changes blockchain state.

## Status

🧪 Early learning scaffold.

The next step is to initialize the Hardhat project locally and compile the first version of `Guestbook.sol`.
