//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Donate{

    address public carteira;
        function addCarteira(address addressCarteira) external returns(address){
            carteira = addressCarteira;
            return carteira;
        }
    

        function donate() public payable{
            payable(carteira).transfer(msg.value);
        }
}
