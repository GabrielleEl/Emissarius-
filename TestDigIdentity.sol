//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.12 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol"; 
import "../contracts/Emissarius.sol";

// This is the second function test for the Emissarius contract and am using this to see if I get the expected result of msg.sender
contract TestEmissarius { 
    function testRegisterDigIdentity() public { 
        Emissarius Emissarius = new Emissarius(); 
        uint expected = msg.sender;
        
        assert.equal(returnedId, expected, msg.sender);
    } 
}