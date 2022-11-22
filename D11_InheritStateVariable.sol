// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract Base_A {
    string public name = "Contract A from Base";

    function getName() public view returns (string memory) {
        return name;
    }
}


/* Wrong way to override inherited variable

contract Derived_B is Base_A {
    string public name = "Contract B";
}

*/

// Correct way to inherit inherited variable

contract Derived_C is Base_A {
    // This is the correct way to override inherited state variables.
    constructor() {
        name = "Contract C from Derived";
    }

    function getValue() public view  returns(string memory) {
        return name;
    }

}
