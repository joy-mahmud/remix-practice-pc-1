// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract LoopingAndCondition{
    //looping and conditions
    uint[] numbers=[1,2,3,4,5,6,7,8,9,10];
    function countEvenNumbers() public  view returns(uint){
        uint count = 0;
        for (uint i=0; i < numbers.length; i++) 
        {
          if(IsEvenNumber(numbers[i])){
            count++;
          }
        
        }
        return count;
    }

    function IsEvenNumber(uint _number) public pure returns(bool){
        if(_number%2==0){
            return  true;
        }else{
            return false;
        }
    }
}