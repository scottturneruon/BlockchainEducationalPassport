pragma solidity ^0.4.0;

contract educoin1 {
        struct edRec {
            string name;
            string qual;
        }
        address public student;
        mapping (address => edRec) public Students;
        address[] studentsByAddress;
        
        
        function add(string _student, string _qual) public {
            address thisAddress=msg.sender;
            Students[thisAddress].name = _student;
            Students[thisAddress].qual=_qual;
            studentsByAddress.push(thisAddress);
        }
        
    
}
