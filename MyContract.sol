// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract MyContract {
    uint256 public myUint;
    
    function setMyUint(uint myUInt) public{
        myUint = myUInt;
    }
    
    bool public myBool;
    
    function setMyBool(bool newBool) public{
        myBool = newBool;
    }
    
    uint8 public myUint8;
    
    function incUint8() public{
        myUint8++;
    }
    
    function decUint8() public{
        myUint8--;
    }
    
    address public myAddress;
    
    function setAddress(address newAddress) public{
        myAddress = newAddress;
    }
    
    function getBalance() public view returns(uint){
        return myAddress.balance;
    }
    
    string public myString = 'hello world';
    
    function stString(string memory newString) public{
        myString = newString;
    }
}
