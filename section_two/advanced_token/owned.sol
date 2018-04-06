contract owned
	{
		address public owner;

		modifier onlyOwner {
			require(msg.sender == owner);
			_;
		}
		
		// Constructor function
		function owned()
		{
			owner = msg.sender;
		}
		// Function to transfer ownership
		function transferOwnership(address to) onlyOwner
		{
			owner = to;
		}
}
