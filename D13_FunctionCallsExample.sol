// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract TestforInternalFunctionClass {

     function internalFunction(uint arg) public pure returns(uint ret) {
        return arg;
    }

    function Function2Call(uint arg) public pure returns(uint ret) {
    return arg + internalFunction(10);    //Calling out the function internally
 }
 
}
