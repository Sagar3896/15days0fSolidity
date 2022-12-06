# 15days0fSolidity

I had taken the test for myself to test writing the  smart contracts and  explore different concepts in Solidity and to  be consistent.

Below are 15 smart contracts  using various concepts in  Solidity.

Day 1 : D1_EnumExample.sol

Here I have shown the usecase of "enum" in Solidity.

It has diiferent functions to change the status of enum  like to Acticate, Idle, Busy etc and even a function to set status as Inactive.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D1_EnumExample.sol


Day 2 : D2_FunctionModifier.sol

Modifiers in Solidity are specially kind of fucntions which can act as prerequisite for any function before executing it.

For instance you want only the citizens > 18 age to vote this can be defined inside a "modifier".

In the given example have declared 2 different modifiers as per their role and the fucntions can be specific to their role.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D2_FunctionModifier.sol


Day 3 : D3_EventsExample.sol

Events in solidity can help you track and maintain logs on occurring specific conditions.

In this contract  I have emitted the log when either of Manager or Member has joined the meeting.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D3_EventsExample.sol


Day  4 : D4_PayableExample.sol

"payable" one of the  prominent term in solidity help any address ,function or contract to send/receive the ethers.

In the contract in order use the function like "greetTeam()" or  "notifyTeam()" the manager or member needs to pay 1 ether as prerequisite  because the function is declared as "payable."

https://github.com/Sagar3896/15days0fSolidity/blob/master/D4_PayableExample.sol


Day  5 : D5_FallbackReceiveExample.sol

"fallback" functions are a kind a of functions which gets  executed when the function call doesnt match any of the functions in contract.

Like a "default" in switch case and does not take any arguments  not  does it rerurn anything.

In order to use transact  using  it via "calldata" once with no parameter and the other time pasiing address as "0x121212" and note the  difference in logs.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D5_FallbackReceiveExample.sol


Day  6 : D6_TestErrorConditions.sol

The testing of error can be done in 3 ways

require() ---> acts as prerequisite
revert() --> acts kind of console.log  after cocndition is  checked.
assert() -->  checks for the condition  that can be used to denote serious problem.

One noteable differnce is require() , revert() returns the leftover gas if condition failed wile assert does not return.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D6_TestErrorConditions.sol


Day  7 : D7_InheritanceExample.sol

Inheritance one of concept in OOPS is also widely used in Solidity.

Where in one can use one  or  more contract as parent contract for rest of contract s.

Look at the example to understand with example.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D7_InheritanceExample.sol


Day  8 : D8_DataStorageExample.sol

Storage concept is one the interesting chapter in solidity.

We can use Memory , Stack, Storage depending on the requirement.

Memory --> this lifesapan for variables stored here is as long as the contract runs
Stack --> this lifesapan for variables stored here is as long as the cfunction runs
Storage --> kind of a global storage  which are required.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D8_DataStorageExample.sol



Day  9 : D9_UncheckedExample.sol

One of the few problem in Solidity is overflow and underflow of variables.

This can be prevented using the "unchecked" although not recommended though but  it can done.

The function with "unchecked" consumes less gas  while  the function the function without  "unchecked" consumes more gas.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D9_UncheckedExample.sol



Day  10 : D10_InterfaceExample.sol

"Interface" can be used to interact with contracts.

In this contract  we have called the function in using interface defined in a base contract.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D10_InterfaceExample.sol



Day  11 : D11_InheritStateVariable.sol

While you can acceess the state variables easily but  to change them you need send a transaction

And in this example we have changes the value of variable from a derived contract class using constructor.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D11_InheritStateVariable.sol



Day  12 : D12_CreatingContractUsingNew.sol

We can even instantiate a contract using "new" keyword.

Here we have instantiated Base contract and passed a value to constructor.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D12_CreatingContractUsingNew.sol



Day  13 : D13_FunctionCallsExample.sol

We can even call functions inside fucntions internally ,  like here we call the function in the return the statement.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D13_FunctionCallsExample.sol



Day  14 : D14_keccak256Example.sol

The use of  keccak256 is quite well in solidity to generate a random hash value with  desired combination or hash of something.

In this contract  we have used it  compare the hash of answer with hash of value stored and compare both and return a boolean value.

https://github.com/Sagar3896/15days0fSolidity/blob/master/D14_keccak256Example.sol



Day  15 : D15_AbstractClassExample.sol

A contract needs to declared as "abstract" when it has only function declation and not defination.

While the same contract will act as parent  to contract  where defination is to be written.

Look at the eaxample below :

https://github.com/Sagar3896/15days0fSolidity/blob/master/D15_AbstractClassExample.sol
