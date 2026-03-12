Warhammer 40K Chapter Lore – On‑Chain Creativity
This repository contains a simple and completely safe Solidity smart contract that allows anyone to create and customize their own Warhammer 40,000 Space Marine chapter directly on the blockchain. Warhammer has always encouraged players to invent their own chapters, write their own stories, and express their creativity through painting and lore. This contract brings that same spirit into Web3.

The contract stores three pieces of chapter identity:

The chapter name

The Primarch

The favorite quote or battle cry

Anyone can update these values, making it a playful and collaborative way to express Warhammer creativity on-chain.

Contract Address and Verification
The contract is deployed and fully verified on BaseScan:

https://basescan.org/address/0xabf4fd5b4e8bf44651b46fb2e5a247cd904709c2#code

Because it is verified, anyone can read the source code, interact with the functions, and confirm that it is completely safe.

About the Contract
The contract ChapterLore.sol allows users to:

Change the chapter name

Change the Primarch

Change the chapter’s favorite quote

Read a combined description of the chapter

The default values are:

Chapter: Blood Angels

Primarch: Sanguinius

Quote: “For Sanguinius and the Emperor!”

This reflects the Warhammer tradition of starting with a known chapter, but giving players full freedom to rewrite the lore however they want.

Safety
This contract is intentionally designed to be 100% safe:

No payable functions

No ability to receive or send ETH

No external calls

No selfdestruct

No owner or permissions

No interaction with your wallet beyond signing the deployment

It is purely a text‑based demonstration for learning Solidity and celebrating Warhammer creativity.

How to Use
Open Remix: https://remix.ethereum.org

Create a new file under contracts/ named ChapterLore.sol

Paste the contract code

Compile using Solidity 0.8.31

Deploy using Injected Provider – MetaMask or the Remix VM

Use the functions:

updateChapter("Space Wolves", "Leman Russ", "For Russ and the Allfather!")

chapterName()

primarchName()

chapterQuote()

describeChapter()

Purpose of This Repository
This project exists to merge two worlds:

Learning Solidity — practicing contract structure, compilation, deployment, and interaction.

Honoring Warhammer 40K creativity — the freedom to invent your own chapters, Primarchs, and battle cries, now preserved immutably on the blockchain.

It is not intended for production use, financial interactions, or token logic.

License
This project is released under the MIT License.
