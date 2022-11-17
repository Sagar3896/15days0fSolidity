// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract UncheckedExample {
    
    uint256 gasUsed;
    uint256 InitialGas;

    function onlyAdd(uint x, uint y) public returns (uint) {
        
        InitialGas = gasleft();
        return x + y;
        
        gasUsed = InitialGas -  gasleft();
        return gasUsed;
    }

 function onlywithUnchecked(uint x, uint y) public  returns (uint) {
        
        InitialGas = gasleft();

        unchecked {
            return x + y;
        }
        
        gasUsed = InitialGas -  gasleft();
        return gasUsed;
    }
}