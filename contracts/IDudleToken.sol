// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

interface DudleToken {
    function mint(address _to, uint256 _value) external;
    function transfer(address _to, uint256 _value) external;
    function transferFrom(address _from, address _to, uint256 _value) external;
    function approve(address _spender, uint256 _value) external;
    function balanceOf(address _owner) external view returns(uint256);
    function allowance(address _owner, address _spender) external view returns(uint256);
}