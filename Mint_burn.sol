// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public admin;

    constructor(uint256 supply) ERC20("MyToken", "MYT") {
        _mint(msg.sender, supply);
        admin = msg.sender;
    }

    function generateTokens(address recipient, uint256 value) public onlyAdmin {
        _mint(recipient, value);
    }

    function destroyTokens(uint256 value) public {
        _burn(msg.sender, value);
    }

    function moveTokens(address sender, address recipient, uint256 value) public returns (bool) {
        _transfer(sender, recipient, value);
        return true;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can generate tokens");
        _;
    }
}
