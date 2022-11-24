// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract contract Base_A {  

    //The class needs to declarde as "abstract" because there is no function defination/implemetation

    function emptyFunction() public pure virtual returns (string memory);
}

abstract contract Derived_B is Base_A { 

    //The class needs to declarde as "abstract" because the function "blankFunction" has no defination but only declartion

    function emptyFunction() public pure override returns (string memory) { 
        return "I am the value for abstract Base_A being called from abstract Derived_B class !!"; 
    }

    function blankFunction() public pure virtual returns (string memory);
}

contract Derived_C is Base_A, Derived_B {

    //As above both the functions are abstract hence this is the only contract that can be deployed

    function blankFunction() public pure override returns (string memory) { 
        return "I am the value for abstract Derived_B being called from non-abstract Derived_C class !!"; 
    }

}