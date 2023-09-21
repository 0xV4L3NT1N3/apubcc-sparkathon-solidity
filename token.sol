pragma solidity 0.8.18;

contract Token {
    string public name = "APU Coin";
    string public symbol = "APU";

    mapping(address => uint256) public balance;

    function mint(uint256 amount) public {
        balance[msg.sender] += amount;
    }

    function transfer(address to, uint256 amount) public {
        require(
            balance[msg.sender] >= amount,
            "Insufficient balance, git gud."
        );
        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
}
