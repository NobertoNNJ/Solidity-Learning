//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ExampleMsgSender{

    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender;//endereço que esta interagindo com o smartcontract por ultimo
    }
}