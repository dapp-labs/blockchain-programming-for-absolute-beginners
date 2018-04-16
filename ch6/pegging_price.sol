uint256 public buyPrice;

function setBuyPrice(uint256 newPrice) onlyOwner public {
		buyPrice = newPrice;
}

function buy() payable public {
		uint amount = msg.value / buyPrice;
		transferFrom(this, msg.sender, amount);
}
