// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PremiumPoolTicket is ERC20, Ownable {
    constructor() ERC20("PremiumPoolTicket", "PPT") {}

    function mint(address _minter, uint256 _amount) public onlyOwner {
        super._mint(_minter , _amount);
    }

    function burn(address _account, uint256 _amount) public onlyOwner {
        super._burn(_account , _amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}