# Error Handling

This program is a simple program that demonstrates the basic syntax and functionality of Error Handling in Solidity programming language. The purpose of this program is to understand the importance of Error handling and the working of it's basic functions. 

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three different functions that check if the entered password is correct if not then the functions return an error message. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```solidity
//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//Password=123

//Creating Contract
contract ErrorHandler{

    //Using Require
    function RequireAuthorization(uint _pass) public pure{
        require(_pass==123,"Incorrect Password");
    }

    //Using Revert
    function RevertAuthorization(uint _pass) public pure{
        if (_pass != 123) {
            revert("Incorrect Password");
        }
    }

    //Using Assert
    function AssertAuthorization(uint _pass) public pure{
        assert(_pass==123);
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile ErrorHandler.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandler" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the RequireAuthorization, RevertAuthorization and AssertAuthorization functions. Click on the "ErrorHandler" contract in the left-hand sidebar, and then click either of these functions. After giving the value to parameters i.e. password click on the "transact" button and the functions are executed. 
If the RequireAuthorization function was executed then it checks if _pass matches the given password if it does then it proceeds with the transaction else it reverts with error message staing Incorrect Password. 
Similar things happen with RevertAuthorization except we enter inly one argument i.e. the statement to revert back and the condition was checked before hand and it also returns all the remaining gas(not the consumed one as once consumed the gas cant be returned). 
In AssertAuthorization we enter only single argument i.e. the condition to be checked if not satisfied it reverts with an error message.

For detailed description you can visit my Loom video.
## Authors

Metacrafter Sourav  
[@SouravKapoor](mailto:kapoorsourav15@gmail.com)


## License

This project is licensed under the MIT License. 
