// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TestConditions {
    address public owner;

    constructor() {
        owner =  msg.sender;
    }

    function letsTestRequire() public view returns (string memory){
        require(msg.sender == owner, "Oops, Seems you are not the owner !!");
        return("From Require Test : Idenitfied you as the Manager");
    }

    function letsTestRevert() public view {
        if(msg.sender == owner)
        revert("From Require Test : Idenitfied you as the Manager");
        else 
        revert("From Require Test : Unknown Address");
    }

    function lestTestAssert() public view {
     assert(msg.sender != owner);
     revert("From Assert Test : The Caller is not the Owner , Test Failed, Gas Lost.....");
     }
}