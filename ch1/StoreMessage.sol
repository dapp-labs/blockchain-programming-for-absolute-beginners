pragma solidity ^0.4.0;

contract StoreMessage {
    bytes32 welcomeMessage;

    function setMessage(bytes32 message)
			public
	{
        welcomeMessage = message;
    }

    function getMessage()
			public
			constant
			returns (bytes32)
	{
        return welcomeMessage;
    }
}
