# Frontend

This folder will contain the React + Vite interface for the Web3 guestbook.

It is intentionally empty for the first scaffold.

## Planned frontend responsibilities

The frontend will eventually:

1. detect an available browser wallet
2. request wallet connection
3. display the connected public address
4. create an ethers.js provider and signer
5. connect to the deployed `Guestbook` contract
6. read existing guestbook entries
7. ask the wallet to sign a transaction when submitting a message
8. show transaction progress and errors clearly

## Important distinction

Reading contract state generally does not require the user to sign a transaction.

Changing contract state does.

That difference will be one of the main concepts explored in this lab.
