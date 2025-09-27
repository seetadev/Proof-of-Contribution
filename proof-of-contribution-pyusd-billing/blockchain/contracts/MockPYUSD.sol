// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MockPYUSD
 * @dev Mock PYUSD token for testing purposes
 */
contract MockPYUSD is ERC20 {
    uint8 private _decimals;

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals_,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _decimals = decimals_;
        _mint(msg.sender, initialSupply);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    // Helper function to mint tokens for testing
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    // Helper function to burn tokens for testing
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}