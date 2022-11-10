// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EnumExample {

    enum Statuses { Active, Idle, Busy, Inactive }
    Statuses currentStatus;

    constructor() {
        currentStatus = Statuses.Active;
    }

    function getMyChoice() public view returns(Statuses) {
        return currentStatus;
    }

    function setActive() public returns(string memory) {
        currentStatus = Statuses.Active;
        return "Status set to Active !!";
    }

    function setIdle() public returns(string memory) {
        currentStatus = Statuses.Idle;
        return "Status set to Idle !!";
    }

    function setBusy() public returns(string memory) {
        currentStatus = Statuses.Busy;
        return "Status set to Busy !!";
    }

    function setInactive() public returns(string memory) {
        currentStatus = Statuses.Inactive;
        return "Status set to Inactive !!";
    }

}
