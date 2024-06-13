// SPDX-License-Identifier: GPL - 3.0
pragma solidity ^0.8.18;

contract MyToken {
    address public owner;
    string public tokenName;
    string public tokenSymbol;
    uint8 public tokenDecimals;
    uint256 public tokenTotalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balance;

    // Events to log the transactions
    event Mint(address indexed to, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);

    constructor() {
        owner = msg.sender;
        tokenName = "Cipher";
        tokenSymbol = "Cyp";
        tokenDecimals = 10;
        tokenTotalSupply = 0;
    }

    // Modifier to restrict minting to the contract owner only
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can mint tokens.");
        _;
    }

    // Function to mint new tokens
    function mintTokens(address to, uint256 amount) public onlyOwner {
        tokenTotalSupply += amount;
        balance[to] += amount;
        emit Mint(to, amount);
    }

    // Function to transfer tokens
    function transferTokens(address receiver, uint256 amount) public {
        require(balance[msg.sender] >= amount, "Insufficient balance to transfer tokens.");

        balance[msg.sender] -= amount;
        balance[receiver] += amount;
        emit Transfer(msg.sender, receiver, amount);
    }

    // Function to burn tokens
    function burnTokens(uint256 amount) public {
        require(balance[msg.sender] >= amount, "Insufficient balance to burn tokens.");

        tokenTotalSupply -= amount;
        balance[msg.sender] -= amount;
        emit Burn(msg.sender, amount);
    }
}
