//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ExampleMapping {

    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myMappingAddress;

    mapping(uint => mapping(uint => bool)) public uintUintMapping;
    
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setAddress() public {
        myMappingAddress[msg.sender] = true;
    }

    function setUintUnintMapping(uint _key1, uint _key2, bool _value) public {
        uintUintMapping[_key1][_key2] = _value;
    }
}