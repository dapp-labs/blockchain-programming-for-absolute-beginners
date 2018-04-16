pragma solidity ^0.4.19;

/** @title PatientRecord */

contract PatientRecord {

    // ** Part 1 ** Enums **

    enum Gender { Male, Female }

    // ** Part 2 ** Structs **

    struct Patient {
         bytes32 name;
         uint age;
        Gender gender;
    }

    // ** Part 3 ** State Variables **

    uint id; //Id for the patient record
    Patient private patient; // The patient
    address public recordOwner;

    // ** Part 4 ** Events **
    // These can be triggered for informing a JS
    // script  in the frontend of the app

    event PatientNameAccessed(address sender);

	// ** Part 5 ** Modifiers **
    // It’s like a protocol that a function should follow

    … code on next page …


	modifier onlyOwner() {
        require(msg.sender == recordOwner);
        _;
	}

    // ** Part 6 ** Functions **

    function PatientRecord()
			public
	{
        recordOwner = msg.sender;
    }

    function getPatientName()
			public
			returns (bytes32)
	{
        PatientNameAccessed(msg.sender);
        return patient.name;
    }

    function setPatientName(bytes32 name)
			public
			onlyOwner
	{
        patient.name = name;
    }

}
