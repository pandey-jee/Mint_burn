# MyToken

## Overview

MyToken (MYT) is an ERC20 token smart contract deployed on the Ethereum blockchain. It allows for token minting (admin-only), burning, and transfers, giving the admin full control over the minting function.

## Description

MyToken is a Solidity-based smart contract that extends the OpenZeppelin ERC20 implementation. It provides basic token functionality, where the initial supply is minted to the contract creator (admin). The contract admin, set upon deployment, has exclusive rights to mint new tokens to designated addresses. Any user can burn their tokens or transfer them using standard ERC20 methods.

# Getting Started

## Deploying the Contract

### Setup

1. **Environment Setup**: Ensure you have an Ethereum development environment set up, such as Remix or Truffle.
2. **Create Contract File**: Copy the contract code into a file named `MyToken.sol`.

### Compiling and Deploying

1. **Compile the Contract**: Use your preferred Solidity compiler (e.g., Remix).
2. **Deploy the Contract**: Deploy the contract to your desired Ethereum network (e.g., Rinkeby, Goerli).

## Interacting with the Contract

Once deployed, interact with the contract using Ethereum wallets or through scripting:

- **Minting Tokens**: Only the contract owner can mint tokens using the `mint` function.
  Example: `mint("0xRecipientAddress", 1000)`

- **Burning Tokens**: Any token holder can burn their tokens using the `burn` function.
  Example: `burn(100)`

- **Transferring Tokens**: Transfer tokens between addresses using standard ERC20 transfer methods.
  Example: `transferFrom("0xFromAddress", "0xToAddress", 100)`

## Help

### Common Issues

- **Ownership Verification**: Ensure only the contract owner can execute minting functions by verifying ownership.

### Command for Help

For assistance or more information, refer to the OpenZeppelin ERC20 documentation or Ethereum development resources.

## Authors

- **CIPHER**

## License

This project is licensed under the MIT License.
