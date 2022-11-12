// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PayableExample {
    address payable Manager;
    uint256 amount;

    mapping (address => uint) balances;

    constructor() {
        Manager = payable(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == Manager, "Access Denied , seems you are not the Manager !!");
        _;
    }

    modifier onlyMember() {
        require(msg.sender != Manager, "Access Denied , seems you are Manager so click on greetTeam");
        _;
    }

    function greetTeam() public payable onlyOwner returns(string memory) {
        require(msg.value == 1 ether, "Please pay 1 Eth to partcipate");
        amount = msg.value;
        return "The Manager has joined the meeting and said Hello to all !!";
    }

    function notifyTeam() public payable onlyMember returns(string memory) {
         require(msg.value == 1 ether, "Please pay 1 Eth to partcipate");
         amount = msg.value;
         return "The Member has joined the meeting and said Hello to all !!";
    }

    function getBalance() public view  onlyOwner returns(uint _bal) {
        return address(this).balance;
    }
}