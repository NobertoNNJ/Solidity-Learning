//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    string public ourString = "Hello World!";

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }
}