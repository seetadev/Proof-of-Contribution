#### Ethereum Foundation's mopro and zkPDF usage in Proof of Contribution 

Our privacy-preserving attestations using zkPDF, on-chain proof verification, and reward token logic, accessibility of using invoice on mobile devices using mopro toolkit are all built on Ethereum-compatible chains using Solidity smart contracts and zk-proof tooling (Circom/Semaphore).
 By advancing reproducible, verifiable contributor proofs and zk-based privacy on Ethereum infrastructure, the project directly aligns with the Ethereum Foundation’s mission to support decentralized, privacy-focused applications and next-generation zk technology.

zk Deployed contract at etherscan: https://etherscan.io/tx/0xfc1fa5978f3d6398681f261f939cf418195118372523c9c1ee151f6a67936bed

Demo Videos and mopro Invoice Android installer files: please visit https://drive.google.com/drive/u/0/folders/1VHOtBR-5vhxyQ6RTE6XmLqVuCOiy0o4k

NFC Integration and MoPro integration: https://github.com/seetadev/Proof-of-Contribution/tree/main/proof-of-contribution-pyusd-billing

NFC integration setup and demos: please visit https://drive.google.com/drive/u/0/folders/1SIoENBv2dXhwAkDOMqTJ9otWRtMmKXzG and https://drive.google.com/drive/u/0/folders/1VHOtBR-5vhxyQ6RTE6XmLqVuCOiy0o4k


# Proving PDFs in ZKP

This repository contains tools for verifying PDF documents within zero-knowledge proof systems.
Learn more in this blog post: https://pse.dev/blog/zkpdf-unlocking-verifiable-data

## Why?

Sometimes you need to prove that:

- A PDF is **signed by a trusted authority**
- A specific **text appears on a given page** without revealing the entire document.

This repo enables such proving capability using SP1-based circuits.

## Structure

- **[pdf-utils/](pdf-utils/)** – Rust crates for:
  - Validating PKCS#7 signatures (RSA-SHA256)
  - Extracting Unicode text from PDF streams
  - WebAssembly bindings for browser integration
- **[circuits/](circuits/)** – SP1-compatible zero-knowledge circuits for signature and text proofs
- **[app/](app/)** – Minimal React frontend to demo proof generation and verification


## Installation

Add the PDF verification library to your Rust project:

```toml
[dependencies]
zkpdf-lib = { git = "https://github.com/privacy-ethereum/zkpdf", branch = "main", subdir = "circuits/lib" }
```

## Quick Start

```rust
use zkpdf_lib::{verify_pdf_claim, PDFCircuitInput};

// Create input for PDF verification
let input = PDFCircuitInput {
    pdf_bytes: pdf_data,
    page_number: 0,
    offset: 100,
    substring: "Important Document".to_string(),
};

// Verify PDF
let result = verify_pdf_claim(input)?;
```

## How it Works

1. **Parse the PDF** using pure Rust (no OpenSSL or C deps)
2. **Generate a zk proof** using SP1 circuits
3. **Verify** the proof on-chain or off-chain

## Setup

Follow these steps to run the prover API and the demo frontend.

### Requirements

- [Rust](https://rustup.rs/)
- [SP1](https://docs.succinct.xyz/docs/sp1/getting-started/install)

### 1. Clone the Repository

```bash
git clone git@github.com:privacy-scaling-explorations/zkpdf
cd zkpdf
```

### 2. Run the Prover API

Start the prover service from the `circuits/script` directory. If you have access to the Succinct Prover Network, export your API key and run:

```bash
cd circuits/script
SP1_PROVER=network \
NETWORK_PRIVATE_KEY=<PROVER_NETWORK_KEY> \
RUST_LOG=info \
cargo run --release --bin prover
```

This will start the prover API on port **3001**.

> **Note:** If you don’t have access to the Succinct Prover Network, you can omit the environment variables to run the prover locally. (This will take longer.)
>
> For local proof generation, refer to `scripts/evm.rs` or run:

```bash
RUST_LOG=info cargo run --release --bin evm -- --system groth16
```

### 3. Run the Frontend

In a separate terminal, start the Next.js app:

```bash
cd app
yarn install
yarn dev
```

Visit [http://localhost:3000](http://localhost:3000) to view the interface.



## Use Cases

- Prove that a document is signed without showing its contents
- Selectively reveal fields from government-issued certificates
- Use verified document facts in smart contracts

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
