// SPDX-License-Identifier: MIT

// the above line specifies the license under which the code is distributed - GPL, Apache, Unlicense, BUSL and many more

pragma solidity ^0.8.20; // The pragma keyword is used to enable certain compiler features or checks.

// Import the ERC20 standard and Ownable contract from OpenZeppelin library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Define the Dogecoin contract, inheriting from ERC20 and Ownable
contract Token is ERC20, Ownable {
    // Constructor to initialize the ERC20 token with a name and symbol,
    // and set the deployer as the owner
    constructor() ERC20("Dogecoin", "DOGE") Ownable(msg.sender) {}

    // Function to mint new tokens, callable only by the contract owner
    function mint(address to, uint256 amount) public onlyOwner {
        // Mint the specified amount of tokens to the given address
        _mint(to, amount);
    }
}
