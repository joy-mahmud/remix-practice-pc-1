// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MappingContract{
    //mapping
    mapping(uint => string) names;
    mapping(uint => Book) public books;
    mapping(address=>mapping(uint => Book)) public myBooks;
     struct Book{
        string title;
        string author;
    }

    constructor() {
        names[1]="john";
        names[2]="doe";
        names[3]="david";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id]=Book(_title,_author);
    }
    function addMyBooks(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id]=Book(_title,_author);
    }
   
}