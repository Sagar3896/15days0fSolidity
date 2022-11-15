// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Base_A {

    function commonFunction() public pure virtual  returns(string memory){
        return "Hey, this is commonFunction() being called from contract Base_A" ;
    }
}

contract Derived_B is Base_A {

        function commonFunction() public pure virtual override   returns(string memory){
        return "Hey, this is commonFunction() overrided and being called from contract Derived_B" ;
    }
}


contract Derived_C is Base_A , Derived_B {

        function commonFunction() public pure  override(Base_A , Derived_B)  returns(string memory){
       // return "Hey, this is commonFunction() overrided and being called from contract Derived_C" ;
        return super.commonFunction();
    }

}