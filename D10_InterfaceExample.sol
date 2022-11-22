// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract F1 {

    function theFunction() external pure returns (string memory) {
        return "I am the function from base class F1 called from F2 via the Interface !!";
    }
}

interface IF1 {

    function theFunction() external;
}

contract F2 {
    
    function incrementCounter(address _add) external {
        IF1(_add).theFunction();
    }
}