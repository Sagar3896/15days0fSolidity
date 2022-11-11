// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EventsExample {

    address public Manager;
    mapping (address => uint) balances;

    event ManagerJoined(address indexed joinee, string message);
    event MemberJoined(address indexed joinee, string message);
    event ViewedBalance(address indexed joinee, string message, uint value);

    string statement1 = unicode"The given address joined as Manager and waved 👋 at participants !!";
    string statement2 = unicode"The given address joined as Member and waved 👋 at participants !!";

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

    function greetTeam() public onlyOwner {
        emit ManagerJoined(msg.sender, statement1);
    }

    function notifyTeam() public onlyMember {
        emit MemberJoined(msg.sender, statement2);
    }

    function getBalance() public onlyOwner returns(uint) {
        emit ViewedBalance(msg.sender, "The owner of the contract viewed the Balance", balances[Manager]);
        return balances[Manager];
    }

}