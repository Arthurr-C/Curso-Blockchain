// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Saldo{

    function consultarOsaldo(address token_, address pessoa_) public view returns (uint256){
        IERC20 token = IERC20(token_);
        return token.balanceOf(pessoa_);
    }
        


    function saldoMoeda(address pessoa_) public view returns (uint256) {
        return pessoa_.balance;
    }

}    
