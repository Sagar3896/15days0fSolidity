// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HashFunction {

    bytes32  hiddenWord = 0xec97de38549d60252b6c19963a6dc99bab112ccd988434b56522752dbcb6d3f5; // keccak256 hash for "Bitcoin"

    string public Question = "I am the First P2P Digital Currency !!";

    function HashIt(string memory _input) public pure returns (bytes32)  {
        return keccak256(abi.encodePacked(_input)); // Getting the Hash of enetered string
    }

    function Answer(string memory _val) public view returns(bool) {
        return  keccak256(abi.encodePacked(_val)) == hiddenWord; // Comparing the hash of given string and answer "Bitcoin"
    }
}