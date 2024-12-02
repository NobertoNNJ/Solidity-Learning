//SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

contract ExampleWarpAround{

    uint public myInt; // 0 - (2^256) - 1 não vai negativo

    uint8 public myUint8 = 2**4;

    function setInt(uint _myUint) public {
        myInt = _myUint;
    }
    function increement() public {
        myUint8++;
    }
    function decrement() public {
        myInt--;
    } // nas versões atuais como começa no zero não diminui, nas antigas versões do zero para para o ultimo valor possivel.
}