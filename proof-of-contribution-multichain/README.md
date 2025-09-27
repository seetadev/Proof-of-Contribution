# Proof of Contribution — Web3 Infrastructure & Incident Management platform on Kadena

A decentralized application (DApp) for **infrastructure and incident management**, enabling contributors and maintainers to report, verify, and resolve incidents with cryptographic proofs and decentralized storage. Built on the **Kadena EVM Testnet**, it ensures transparent audit trails, immutable data records, and verifiable contributor actions.

---

### 🌐 Deployment Details

* **Network:** Kadena EVM Testnet (Chain 20)
* **Contract Address:** `0x3ab0dCEF4F1A3d005B68F2527F96C47FAb656BAC`
* **Explorer:** [View on Chainweb Explorer](https://explorer.chainweb.com/testnet)

---

### 🔧 Smart Contract Functions

The **IncidentManager** contract provides the following core functionality:

**Core Functions**

* `reportIncident(string _description)` → Submit a new infrastructure/incident report (stored via IPFS).
* `getIncident(uint _id)` → Retrieve incident details by ID.
* `incidentCounter` → Get the total number of incidents recorded.

**Data Structure (per incident)**

* **ID:** Unique incident identifier.
* **Description:** IPFS URL containing the full incident report.
* **Reporter:** Wallet address of the contributor who submitted the report.
* **Timestamp:** Block timestamp of when the incident was recorded.

---

### 🚀  Workflow

We use Kadena to extend our project workflows to a **professional, verifiable workflow**:

**Step 1: Incident Details Collection**

* Fields: Infrastructure service impacted, incident type, severity level, detailed description.
* Optional: Attach logs, PR links, or safetensor model artifacts if related to infra/AI issues.
* Validation ensures all critical details are submitted.

**Step 2: Professional Report Generation**

* Reports are auto-generated in **PDF format** with:

  * Incident ID, description, and metadata.
  * Contributor’s identity attestation (via KYC Merkle proof).
  * Maintainer’s review rating (zk-proof backed).
* PDF-lib ensures consistent legal/enterprise formatting.

**Step 3: Decentralized Storage**

* Reports and evidence files uploaded to **IPFS via Web3.Storage (Storacha)**.
* Backed by **Filecoin** for permanent, tamper-resistant storage.
* Each file receives a CID for immutable reference.

**Step 4: Blockchain Submission**

* Contributor connects wallet (MetaMask / account abstraction).
* Incident CID submitted to **Kadena IncidentManager** contract.
* Transaction recorded immutably with timestamp + reporter’s address.

**Step 5: Verification & Rewards**

* Maintainers verify incident using **Semaphore + zkPDF proofs** (privacy-preserving attestations).
* Approved contributors receive **automated PyUSD payouts** (via PayPal) or on-chain stablecoin transfers.
* Long-term recognition is distributed using **ERC-20 token rewards** on Kadena, Filecoin, Optimism, and Hedera.

---

### 🎯 Key Benefits

**For Contributors:**

* Professional incident reports with verifiable blockchain timestamps.
* Automatic recognition (invoice validation, PyUSD payouts, token rewards).
* Portable proof-of-contribution for future projects/DAOs.

**For Maintainers & Orgs:**

* Immutable incident records with full audit trails.
* Compliance-ready documentation (suitable for legal or insurance cases).
* Decentralized, scalable infra with no single point of failure.
* zk-proofs ensure trusted validation without leaking sensitive reviewer data.

---

### 🔒 Security & Trust

* **Immutable Records:** Once logged, reports cannot be altered or deleted.
* **Cryptographic Verification:** Incidents are signed by reporters and verified by zk-proofs.
* **Encrypted KYC + Liveliness:** Contributor identity data is protected via **Lit Protocol** + **Filecoin Synapse SDK**.
* **Transparent Process:** Every incident and payment is on-chain verifiable.

---

### 🌟 Technical Architecture

* **Frontend:** React + Next.js + TypeScript
* **Smart Contracts:** Solidity on Kadena EVM (incident + reward logic)
* **Storage:** IPFS + Filecoin via Web3.Storage (Storacha)
* **Wallet Integration:** MetaMask + Account Abstraction for social logins
* **ZK Proofs:** Semaphore + Circom for anonymous, verifiable attestations
* **Payments:** PayPal PyUSD & stablecoin rails
* **Token Rewards:** Lightweight ERC-20 tokens on Kadena, Filecoin, Optimism, Hedera


