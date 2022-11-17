// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract TestDataLocation {
     string memberName ;//bydefault it is stored in "storage"

    struct TeamList {
        string memberName ;
    }

    TeamList[] teamlist;

    function testStorage() public  returns (string memory) {
        memberName =  "Mr. Storage";
        return  memberName;
    }

    function testMemory()  external view  {
        TeamList memory team = teamlist[0]; //stored in memory and lifespan till the contract runs
        team.memberName = "Mr.Memory";
    }

    function testStack() pure  external  {
        uint x =10;  //it stores in "stack" location and its lifespan is as long as the function runs
        if(x < 11)
        revert("The value is less than 11");
    }
}