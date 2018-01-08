pragma solidity >0.4.0;


contract NextCoin {
    mapping (address => uint256) public balanceOf;
    string public name;
    string public symbol;
    uint8 public decimals;

    function NextCoin(uint256 initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
        name = "NextCoin";
        symbol = "NXT";
        decimals = 2;
    }

    function transfer(address receiver, uint value) public payable returns (bool) {
        require(msg.sender.balance < value);
        require(receiver.balance + value < receiver.balance);
        receiver.transfer(value);
    }
}
