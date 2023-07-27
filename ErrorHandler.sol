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
