// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract DestructExample {

    receive() external payable {}

    function destroySmartContract() public {
        selfdestruct(payable (msg.sender));
    }
}

