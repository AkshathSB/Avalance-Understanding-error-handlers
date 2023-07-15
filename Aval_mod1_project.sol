// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.20;
contract error_testing{
    uint public r;
    uint public q;
    constructor(uint _x, uint _y){
       r = _x;
       q = _y;
    }
    
    function to_check_require()public view returns(uint){
        uint a= r*r/q*q;
        require(a==0,"a should be equal to 0");
        return a;
        
    }
    function to_check_revert(uint _b)public view returns(uint){
        if(_b**r!=0){
            revert("Number should be equal to 0");
        }   
        return _b**r;
    }
    
    function to_check_assert()public view returns(uint){
        assert(!(r<100) || !(q<100));
        return r;
    }
    
}
