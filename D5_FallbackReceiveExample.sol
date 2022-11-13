// SPDX-License-Identifier: GPL-3.0

pragma solidity  >=0.7.0 <0.9.0;

contract FallbackReceiveExample {
    event notify(string func, address sender, uint value, bytes data);
    

    fallback() external payable {
        emit notify("I am from fallback()", msg.sender, msg.value,msg.data);
    }

    receive() external  payable   {
        emit notify("I am from receive()", msg.sender, msg.value,"");   
    }

}