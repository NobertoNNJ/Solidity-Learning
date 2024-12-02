//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ExampleUint{

    uint public myInt; // 0 - (2^256) - 1 não vai negativo

    uint8 public myUint8 = 250;

    int public meuInt = -10; // -2^128 to + 2^128-1 pode negativo

    function setInt(uint _myUint) public {
        myInt = _myUint;
    }

    function increement() public {
        myUint8++;
    }

    function increementInt() public {
        meuInt++;
    }
    function decrement() public {
        unchecked{
            myInt--;
        }
    }
}

// uint inteiro maior que zero
// int inteiro podendo ser menor que zero
// não tem float