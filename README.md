# ETH-AVAX Module-1 (Error Handling)

This Solidity smart contract is designed to demonstrate basic validation and error handling techniques. It includes functions to update a stored value, while ensuring that certain conditions are met.


## Getting Started

To use or deploy this contract, you'll need a development environment with Solidity compiler and a suitable Ethereum development framework like Truffle or Remix.

### Prerequisites

- Solidity Compiler: Make sure you have a Solidity compiler version that is compatible with the contract (e.g., ^0.8.0).
- Ethereum Development Framework: Install and set up an Ethereum development framework like Truffle, Remix, or any other of your choice.

## Contract Overview

The `ashutosh` is a basic Ethereum smart contract that allows the owner to update a stored value. It demonstrates the usage of `require()`, `assert()`, and `revert()` statements for input validation, invariant checking, and custom error handling.

### Contract Variables

- `owner`: This is the address of the contract owner, set during contract deployment.
- `number`: A public unsigned integer variable initialized to 10, representing the stored value.

### Events

- `numberUpdated(uint256 newnumber)`: An event emitted whenever the `number` is successfully updated. It includes the new number as an argument.

### Constructor

The constructor of the contract initializes the `owner` address to the address of the sender who deploys the contract.

### Functions

- `updatenumber(uint256 newnumber) external`: This function allows the contract owner to update the `value` with the provided `newValue`. It includes the following validation steps:
  - It uses `require()` to ensure that the `newnumber` is greater than zero.
  - It uses `assert()` to verify that the sender is the owner of the contract.
  - It uses `revert()` to provide a custom error message if `newnumber` exceeds 10.
  If all validation checks pass, the `number` is updated, and the `numberUpdated` event is emitted.

## Author
Ashutosh
