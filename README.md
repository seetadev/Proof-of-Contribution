# Proof of Contribution

A modular **Web3 toolkit** for maintainers, DAOs, and grant programs to **verify, reward, and pay contributors** with **privacy-preserving proofs** and **durable storage**—now extended to **Kadena EVM** for scalable, low-fee deployments.

---

## ✨ Key Features

* **Contributor Identity & KYC**

  * Wallet login with **web3modal/wagmi**
  * PayPal/partner KYC + biometric liveliness
  * Encrypted KYC artifacts stored on **Filecoin** with Lit Protocol access control
  * Merkle-root attestations on-chain for Sybil resistance

* **Contribution Capture & Proofs**

  * GitHub PR webhooks + safetensor model uploads
  * Provenance using the **MoPro stack**
  * **zkPDF integration** for document-level zero-knowledge proofs
  * **Semaphore** proofs for anonymous maintainer approvals

* **Invoice & Payment Automation**

  * In-app invoice creation & wallet signing
  * zk-proof & artifact-hash validation
  * Global payouts via **PayPal PyUSD** or on-chain stablecoins

* **Token Incentives**

  * ERC-20 reward tokens deployed on **Kadena EVM**, Filecoin, Optimism, and Hedera
  * Merkle airdrop and timelock vesting options

* **Unified ZK Registry (Future)**

  * Vision for a single ZK registry supporting passports, zkPDF docs, MoPro attestations, etc.

* **NFC Feature Exploration (Experimental)**

  * NFC chip integrations (e.g., ETHGlobal wristbands) for tap-to-prove flows and better UX

---

## 🌐 Kadena Integration

We’ve extended Proof of Contribution to **Kadena EVM**, taking advantage of:

* **Scalable Proof of Work**: Chainweb’s multi-chain architecture allows horizontal scaling without sacrificing security or decentralization.
* **Low Fees + High Throughput**: Parallel chains provide lower gas costs and faster confirmations.
* **EVM Compatibility**: Seamlessly deploy existing Ethereum contracts to Kadena’s EVM chains.

**Why it matters:**
Deploying our verifier, escrow, and token contracts on Kadena EVM gives contributors **faster, cheaper transactions** while retaining Ethereum-tooling familiarity (Solidity, Hardhat/Foundry).
You can start building today on the **Kadena EVM testnet** and tap into a scalable PoW layer-1 network.

---

## 🏗️ High-Level Architecture

```
Frontend (Next.js 14 + TypeScript + Tailwind)
│
├─ Wallet Auth (web3modal/wagmi)
├─ Artifact Upload (safetensors, reports)
└─ Invoice Dashboard
      ↓
Backend (Node.js / TypeScript + Postgres + Redis)
│
├─ KYC Service (PayPal / partner)
├─ Storage Service (Filecoin Synapse, IPFS)
├─ Proof Service (Circom / snarkjs / zkPDF / Halo2)
├─ Lit Gateway (encryption key management)
└─ Payment Adapter (PyUSD & on-chain stablecoins)
      ↓
Smart Contracts (Solidity)
   ├─ Verifier (zk-proof validation: Semaphore, zkPDF, MoPro)
   ├─ Escrow / Payout
   └─ ERC-20 Reward Token
         ↳ deployed on Kadena EVM + other chains
```

---

## 🚀 Quick Start

### Prerequisites

* **Node.js ≥18**, **pnpm** or **yarn**
* GitHub App for PR webhooks
* Optional: PayPal developer sandbox credentials
* **Kadena EVM testnet wallet** (Metamask supported)

### 1. Clone & Install

```bash
git clone https://github.com/your-org/proof-of-contribution.git
cd proof-of-contribution
pnpm install
```

### 2. Environment Variables

```
DATABASE_URL=postgres://user:pass@localhost:5432/poc
REDIS_URL=redis://localhost:6379
PAYPAL_CLIENT_ID=xxx
PAYPAL_CLIENT_SECRET=yyy
LIT_API_KEY=zzz
FILECOIN_TOKEN=...
KADENA_RPC=https://testnet.kadena.io/evm
```

### 3. Deploy to Kadena EVM

Compile and deploy contracts:

```bash
pnpm hardhat run scripts/deploy-kadena.ts --network kadenaTestnet
```

---

## 🧪 Tests

* Contracts: Hardhat + Foundry unit/integration tests
* ZK Circuits: Circom test harness, zkPDF sample circuits
* End-to-End: GitHub Actions CI

---

## 🛠️ Tech Stack

| Layer                | Tools                                        |
| -------------------- | -------------------------------------------- |
| Frontend             | Next.js 14, Tailwind CSS, wagmi              |
| Backend              | Node.js, Fastify/Express, Postgres, Redis    |
| ZK Proofs            | Circom, snarkjs, Semaphore, **zkPDF**, Halo2 |
| Storage & Encryption | Filecoin Synapse SDK, IPFS, Lit Protocol     |
| Payments             | PayPal PyUSD, on-chain stablecoins           |
| Provenance           | **MoPro** metadata, zkPDF                            |
| Multi-Chain          | **Kadena EVM**, Optimism, Filecoin, Hedera   |

---

## 🗺️ Roadmap

* [x] Wallet auth + mock KYC
* [x] GitHub PR & safetensor capture
* [x] Semaphore-based maintainer proofs
* [x] Kadena EVM deployment
* [ ] zkPDF integration for document proofs
* [ ] Unified ZK Registry prototype
* [ ] NFC tap-to-prove demo

---

## 🤝 Contributing

PRs, issues, and discussions welcome!
Please refer to dev setup and ZK circuit guidelines.

---

## 💡 Inspiration & Partners

* **Kadena** – scalable Proof-of-Work Layer-1 with EVM compatibility and ultra-low fees.
* **Filecoin** – durable, content-addressed storage for encrypted KYC & ML artifacts.
* **PayPal / PyUSD** – compliant global payouts and KYC onboarding.
* **Ethereum Foundation ecosystem** – smart-contract tooling and zk libraries.
* **zkPDF & MoPro** – standardized zero-knowledge document proofs and model provenance.

---

## 📝 License

MIT © 2025 Manu Sheel Gupta, Deepti Gupta
