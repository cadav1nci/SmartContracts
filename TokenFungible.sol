// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenFungible is ERC20("TonioCoin", "$TONIO") {
    
    constructor() {
        //this mints 3333 tokens
        //to the contract deployer
        _mint(msg.sender, 3333);
    }
    
}