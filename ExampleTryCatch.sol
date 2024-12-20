//SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract WillThrow {
    error NotAllowedError(string);
    function aFunction() public pure {
        //require(false, "Error message");
        //assert(false);
        revert NotAllowedError("You are not allowed");
    }
}

contract ErrorHandling {
    event ErrorLoggin(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowLevelData);

    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //add code
        } catch Error(string memory reason){
            emit ErrorLoggin(reason);
        } catch  Panic(uint errorCode){
            emit ErrorLogCode(errorCode);
        }catch(bytes memory lowLevelData){
            emit ErrorLogBytes(lowLevelData);
        }
    }
}