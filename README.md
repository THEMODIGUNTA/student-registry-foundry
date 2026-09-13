# 🎓 Student Registry Smart Contract

A decentralized student identity registry built with **Solidity** and developed, tested, and deployed to the **Ethereum Sepolia Testnet** using the **Foundry** toolchain (`forge`, `cast`).

---

## 📌 Overview

This project implements an on-chain registry allowing an administrator or institution to store student credentials directly on the Ethereum blockchain. It avoids browser-based IDEs (like Remix) in favor of a production CLI workflow using Foundry, featuring native Solidity testing, encrypted keystore transaction signing, and automated CI pipelines.

---

## 🔗 Deployment Details

| Parameter | Value |
| :--- | :--- |
| **Network** | Ethereum Sepolia Testnet |
| **Chain ID** | `11155111` |
| **Contract Address** | `0xYOUR_DEPLOYED_CONTRACT_ADDRESS` |
| **Etherscan Tracker** | [View on Sepolia Etherscan](https://sepolia.etherscan.io) |
| **RPC Provider** | Infura |

---

## 📂 Repository Structure

```text
student-registry/
├── src/
│   └── StudentRegister.sol        # Core smart contract logic
├── test/
│   └── studentRegiter.t.sol       # Native Foundry unit test suite
├── script/
│   └── DeployStudentRegister.s.sol # Declarative on-chain deployment script
├── .github/workflows/             # Automated CI pipeline (build & test)
├── foundry.toml                   # Foundry project configuration
└── README.md

```

---

## ⚙️ Contract Interface

| Function | Type | State Access | Description |
| --- | --- | --- | --- |
| `studentDetailsRegister(...)` | External | Write (Gas) | Adds a student struct to storage and updates the roll number mapping. |
| `roolNumberToString(string)` | Public | Read (Free) | Auto-generated getter returning the student's name for a given roll number. |
| `review()` | Public | Read (Free) | Returns an array containing all registered student records. |

---

## 🛠️ Tech Stack & Tooling

* **Language:** Solidity (`^0.8.16`)
* **Framework:** Foundry (`forge`, `cast`, `anvil`)
* **Security:** `cast wallet` encrypted keystore (zero plain-text private keys)
* **CI/CD:** GitHub Actions running automated builds and unit tests

---

## 🚀 Local Development & Setup

### 1. Prerequisites

Ensure you have Foundry installed:

```bash
curl -L [https://foundry.paradigm.xyz](https://foundry.paradigm.xyz) | bash
foundryup

```

### 2. Clone the Repository

```bash
git clone [https://github.com/](https://github.com/)<YOUR_GITHUB_USERNAME>/student-registry-foundry.git
cd student-registry-foundry
forge install

```

### 3. Compile Contracts

```bash
forge build

```

### 4. Run Unit Tests

Execute the test suite with full call-trace visibility:

```bash
forge test -vvvv

```

---

## 📡 Deployment & On-Chain Interaction

### 1. Deploy via Forge Script

```bash
forge script script/DeployStudentRegister.s.sol:DeployStudentRegister \
  --rpc-url <SEPOLIA_RPC_URL> \
  --account sepolia-key \
  --broadcast

```

### 2. Write Data On-Chain (`cast send`)

Register a student record directly from the terminal:

```bash
cast send <CONTRACT_ADDRESS> \
  "studentDetailsRegister(string,string,string,string)" \
  "Alice" "CS101" "Solidity, Foundry" "Yes" \
  --rpc-url <SEPOLIA_RPC_URL> \
  --account sepolia-key

```

### 3. Read Data On-Chain (`cast call`)

Query the mapped record without spending gas:

```bash
cast call <CONTRACT_ADDRESS> \
  "roolNumberToString(string)(string)" "CS101" \
  --rpc-url <SEPOLIA_RPC_URL>

```

---

## 🔒 Security Best Practices Implemented

* **No Plain-Text Secrets:** Keystores are managed via Foundry's password-encrypted local storage rather than vulnerable `.env` files.
* **Deterministic Deployment:** Deployments are executed through reproducible Solidity scripts rather than ad-hoc console transactions.
* **Strict Memory Scoping:** Read methods utilize `view` and explicit memory allocations to optimize runtime gas overhead.

```

---

### Commands to Push

After pasting the text into `README.md` and saving (`Ctrl + S`), run this in your terminal:

```bash
git add README.md
git commit -m "docs: add complete project documentation"
git push origin main

```