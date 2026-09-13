# Student Registry Smart Contract (Foundry)

A decentralized student registry smart contract developed, tested, and deployed to the Ethereum Sepolia Testnet using the **Foundry** toolchain (`forge`, `cast`, `anvil`).

## 🔗 Live Deployment
- **Network:** Ethereum Sepolia Testnet
- **Contract Address:** `0xYOUR_DEPLOYED_CONTRACT_ADDRESS`
- **Etherscan Explorer:** [View on Sepolia Etherscan](https://sepolia.etherscan.io/address/0xYOUR_DEPLOYED_CONTRACT_ADDRESS)

---

## 🛠️ Tech Stack & Architecture
- **Language:** Solidity (`^0.8.16`)
- **Framework:** Foundry (Forge, Cast, Anvil)
- **RPC Infrastructure:** Infura
- **Security:** Cast encrypted keystore (`cast wallet`) for zero plain-text private key exposure

---

## 🚀 Getting Started

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Git](https://git-scm.com/)

### 1. Build
Compile the smart contracts:
```bash
forge build