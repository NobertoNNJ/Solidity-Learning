//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SampleContract {

    string public myString = "Hello World";

    function updateString(string memory _newString) public payable{
        if(msg.value == 1 ether) {
            myString = _newString;
        } else{
            payable(msg.sender).transfer(msg.value);
        }
        
    }
}