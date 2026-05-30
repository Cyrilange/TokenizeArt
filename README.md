# tokenizerArt - NFT Project

## 📝 Project Overview
This repository contains the source code and architecture choices for **tokenizerArt**, a project dedicated to creating, deploying, and demonstrating a secure Non-Fungible Token (NFT) on the blockchain. 

The project includes a fully documented Solidity smart contract, decentralized metadata storage, and a robust security architecture.

---

## 🛠️ Architectural Choices & Justifications

### 1. Blockchain Platform: Ethereum (Sepolia Testnet)
We chose the **Ethereum** ecosystem for this project. 
* **Why?** It is the pioneer and industry standard for decentralized applications (dApps) and NFTs. It offers mature tooling, extensive documentation, and native compatibility with all major marketplaces.
* **Network:** Deployed on the **Sepolia Testnet** to simulate a real production environment without incurring actual gas fees in ETH.

### 2. Token Standard: ERC-721 (via OpenZeppelin)
To comply with Ethereum standards, the token implements the **ERC-721** standard, specifically inheriting from OpenZeppelin's `ERC721URIStorage`.
* **Why ERC-721?** Unlike ERC-1155 (which is built for multi-tokens or semi-fungible items), ERC-721 is the easiest and most explicit standard for strictly unique, 1-of-1 digital artworks.
* **Why OpenZeppelin?** It provides battle-tested, community-audited code templates. Re-implementing low-level token logic increases the attack surface for exploits.

###### Doc 

[openZeppelin](https://docs.openzeppelin.com/)

### 3. Development Tools & Ecosystem: Hardhat / Remix
* **Framework:** **foundry** explication of foundry down there.
* **Language:** **Solidity (^0.8.20)**. Using a modern compiler version ensures native protection against arithmetic overflows/underflows without needing external libraries like SafeMath.

---

##  Metadata Architecture (IPFS)

In accordance with strict decentralized principles, the art asset and its attributes are **not** stored directly on-chain (which would be prohibitively expensive). Instead, they are stored using **IPFS (InterPlanetary File System)**, ensuring cryptographic immutability through Content Identifiers (CIDs).

### Metadata Specifications
* **Artist Name (Login):** 
* **Token Name:** 

### `metadata.json` Structure
```json
{
	"name": "tokenizerArt #42 - Neon Beach",
	"description": "A unique vaporwave NFT artwork generated for the tokenizerArt project, blending decentralized code structures, a tropical beach vibe, and the ultimate number 42.",
	"image": "ipfs://cid",
	"attributes": [
	  {
		"trait_type": "Collection",
		"value": "tokenizerArt"
	  },
	  {
		"trait_type": "Theme",
		"value": "Vaporwave Beach"
	  },
	  {
		"trait_type": "artiste",
		"value": "csalamit"
	  },
	  {
		"trait_type": "Legendary Number",
		"value": "42"
	  }
	]
  }

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
