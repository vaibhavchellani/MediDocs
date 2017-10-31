pragma solidity ^0.4.4;

contract ShareDoc {
    //event Awarded(uint amount);

    struct User {
        //this is the last index
        uint no_of_docs;
        //simple iterate this mapping with userid as key and get all docs 
        mapping(uint => string) docs;
    }
    mapping(address => User) public userBase;
    function storeContent(string hash)
    {
        userBase[msg.sender].docs[userBase[msg.sender].no_of_docs+1]=hash;
        userBase[msg.sender].no_of_docs+=1;
    }
    function ShareDoc()
    {
        //meaning no content yet
        userBase[msg.sender].no_of_docs=0;
    }
    //retrieves content of the sender , have to send different index 
    function retrieveContent(uint index) public returns(string)
    {
        return userBase[msg.sender].docs[index];
    }
    function getNoOfDocs() public returns(uint)
    {
        return userBase[msg.sender].no_of_docs;
    }
}

