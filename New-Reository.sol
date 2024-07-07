// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "https://github.com/Zoolling2020/New-Reository/blob/main/teen%20tate.sol";

contract DADDYTATEFRIEND is ERC20, ERC20Permit {
    constructor()
        ERC20("DADDYTATEFRIEND", "DADDY TATE")
        ERC20Permit("DADDYTATEFRIEND")
    {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }
}