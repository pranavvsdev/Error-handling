// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Avahandlers {
    uint[] public array = [1, 4, 3, 8, 5];

    function first_handler() public view returns (uint[] memory) {
        for (uint i = 0; i < array.length; i++) {
            require(array[i] != 3, "3 is very unlucky, it should not be present");
        }
        return array;
    }

    function second_handler() public view returns(bool) {
        assert(array.length>0 && array.length!=3);
        return true;
    
    }

    function third_handler(uint[] memory array2) public view returns (bool) {
        uint sum1;
        uint sum2;

        for (uint i = 0; i < array.length; i++) {
            sum1 += array[i];
        }
        for (uint i = 0; i < array2.length; i++) {
            sum2 += array2[i];
        }

        if(sum1 != sum2 ){
            revert("The sum of both the arrays should be equal");
        }
        return true;
    }
}
