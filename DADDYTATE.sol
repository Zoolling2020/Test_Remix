// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract DADDYTATEFRIEND is ERC20, ERC20Permit {
    constructor()
        ERC20("DADDYTATEFRIEND", "DADDY TATE")
        ERC20Permit("DADDYTATEFRIEND")
    {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }
}