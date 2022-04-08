// SPDX-License-Identifier: BSD-3-Clause
pragma solidity =0.6.12;
 import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/solc-0.6/contracts/presets/ERC20PresetMinterPauser.sol";
//import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";
 contract IFI is ERC20PresetMinterPauser{
     constructor(string memory name,string memory symbol) public ERC20PresetMinterPauser(name,symbol) {   
 }
 
function mint(address to, uint256 amount) public  virtual override {   
     uint256 newAmount=amount;
     uint256 total=totalSupply();
    if(total+amount>210000000000000000000000000)
    {
       newAmount=210000000000000000000000000-total;
    }
       ERC20PresetMinterPauser.mint(to,newAmount);
    }
}