# SimpleContract on Base Network

A simple Solidity smart contract deployed on the Base network using Remix IDE.

## Contract Overview

- Stores a message.
- Only the owner can update the message.
- Emits an event on update.

## Deployment on Base using Remix

### 1. Prerequisites
- MetaMask or Coinbase Wallet installed.
- Some ETH on Base (Mainnet) or Base Sepolia (testnet). For testing, use Sepolia and get free ETH from a faucet: https://www.alchemy.com/faucets/base-sepolia or similar.

### 2. Add Base Network to Wallet
**Base Mainnet:**
- Network Name: Base
- RPC URL: https://mainnet.base.org
- Chain ID: 8453
- Currency Symbol: ETH
- Block Explorer: https://basescan.org

**Base Sepolia (recommended for testing):**
- Network Name: Base Sepolia
- RPC URL: https://sepolia.base.org
- Chain ID: 84532
- Currency Symbol: ETH
- Block Explorer: https://sepolia.basescan.org

### 3. Steps in Remix (https://remix.ethereum.org)
1. Open Remix.
2. Create a new file `SimpleContract.sol` and paste the contract code.
3. Go to the Solidity Compiler tab, select compiler version 0.8.20 or higher, and compile.
4. Go to Deploy & Run Transactions.
5. Select Environment: Injected Provider - MetaMask (or your wallet).
6. Make sure your wallet is connected to Base or Base Sepolia.
7. Deploy the contract. Enter an initial message in the constructor (e.g., "Hello Base!").
8. Confirm the transaction in your wallet.
9. Once deployed, copy the contract address and verify on Basescan.

### 4. Interact
- Call `getMessage()` to read.
- Call `updateMessage` (as owner) to change it.

## License
MIT
