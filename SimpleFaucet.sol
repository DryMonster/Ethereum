// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract Faucet{
    // A function to withdraw 1 or less ether from the Faucet contract
    function withdrawEther(uint _amount) public{
        
        //Implementing amount constraint
        require( _amount <= 1, "Amount can't be greater than 1");
        
        //Transfering the requested amont if the constraint is satisfied
        address payable toAddr = payable(msg.sender);
        toAddr.transfer(_amount);
    }
    
    //function to accept any incoming funds
    function acceptEther() payable public{
        
    }
    
    //function to know the contract balance
    function getBalance() public view returns(uint){
        
        return address(this).balance;   
    }
}
