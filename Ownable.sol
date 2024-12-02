// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Owner {

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier  onlyOwner() {
        require(msg.sender == owner, "you are not allowed");
        _;
    }
}