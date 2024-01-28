# Handling Errors

This Solidity smart contract, named Avahandlers, provides handlers for various functions involving an array of unsigned integers. The contract includes functions to check for the presence of a specific value in the array, perform an assertion based on the array length, and compare the sum of two arrays.
## Description

- first_handler()

Description: Checks if the value 3 is present in the array. If found, it raises an exception.
Usage: first_handler()
- second_handler()

Description: Asserts that the array length is greater than 0 and not equal to 3.
Usage: second_handler()
- third_handler(uint[] memory array2)

Description: Compares the sum of the contract's array with the sum of an input array. If the sums are not equal, it reverts the transaction.
Usage: third_handler(array2)
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., handle_err.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile handle_err.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "handle_err" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it .
## Authors

Pranav S Devang

@pranavssdevang@gmail.com

## License

This project is [UNLICENSED] 
