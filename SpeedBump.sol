//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.8.0; 

contract SpeedBump { 
    uint allowedTime; 
    modifier allowed_every(uint _time) { 
        if(block.timestamp > allowedTime) { 
            _; 
            allowedTime = block.timestamp + _time;
        }
    }

    function setAllowedTime(uint _time) 
        public 
        returns(bool)
    { 
        allowedTime = block.timestamp + _time;
        return true;
    }
}