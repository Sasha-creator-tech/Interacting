// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./IDudleToken.sol";

contract Interacting {
    IDudleToken public calledAddress;
    
    function set_address(address _addr) public {
        calledAddress = IDudleToken(_addr);
    }
    
    //Mint ERC20 tokens of someones's contract
    function mint(address _to, uint256 _value) public {
        calledAddress.mint(_to, _value);
    }
    
    //Transfer ERC20 tokens from sender address to receiver
    function transfer(address _to, uint256 _value) public {
        calledAddress.transfer(_to, _value);
    }
    
    //Transfer ERC20 tokens of someones's address to someones's another one
    function transferFrom(address _from, address _to, uint256 _value) public {
        calledAddress.transferFrom(_from, _to, _value);
    }
    
    //Approve to spend some amount of tokens by someone address
    function approve(address _spender, uint256 _value) public {
        calledAddress.approve(_spender, _value);
    }
    
    //Get balance of allowed amount of tokens to spend by some address
    function allowance(address _owner, address _spender) public view returns(uint256) {
        return calledAddress.allowance(_owner, _spender);
    }
    
    //Get balance of ERC20 tokens of someones's address
    function balanceOf(address _owner) public view returns(uint256) {
        return calledAddress.balanceOf(_owner);
    }
}
