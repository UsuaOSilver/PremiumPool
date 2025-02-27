// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.13;

interface IPool {
  function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;
  function withdraw(address asset, uint256 amount, address to) external returns (uint256);
}