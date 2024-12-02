//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

 contract ExampleViewPure {

    uint public myStorageVariable;

    function getMyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }

    function getAddition (uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function setStorageVariable(uint _newVar) public returns(uint){
        myStorageVariable = _newVar;
        return _newVar;
    }//return não recomendado para funções de escrita
 }