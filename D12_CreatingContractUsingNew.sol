// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BaseClass {

    uint public val;

    constructor(uint arg) payable {
        val = arg;
    }
}

contract ChildClass {

    function updateValue(uint arg) public returns(uint _val){
        BaseClass newInstance = new BaseClass(arg); //Using the new keyword to create contract instance
        newInstance.val();
        return newInstance.val();
    }

}