// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifier {

    address public Manager;
    mapping (address => uint) balances;

    constructor(uint _amount) {
        Manager = msg.sender;
        balances[Manager] = _amount;
    }

    modifier onlyOwner() {
        require(msg.sender == Manager, "Access Denied , seems you are not the Manager !!");
        _;
    }

    modifier onlyMember() {
        require(msg.sender != Manager, "Access Denied , seems you are Manager so click on greetTeam");
        _;
    }

    function greetTeam() public view onlyOwner returns(string memory){
        return "Welcome to the Meeting, I am your Manager !!";
    }

    function notifyTeam() public view onlyMember returns(string memory) {
        return "Hello everyone I have joined the Meeting !!";  
    }

    function getBalance() public view onlyOwner returns(uint) {
        return balances[Manager];
    }
}
