// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//By inheriting from the ERC-721 contract 
//we can access all of its methods
contract NonFungibleToken is ERC721("Tonito NFT","TNFT") {
    
    constructor() {
        //this fuction gives a NFT 
        //with the ID "1" to the contract
        // deployer
        _mint(msg.sender, 1);
    }
    
}