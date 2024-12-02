//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ExampleExceptionRequire {

    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable{
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "not wnough funds, aborting!");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}