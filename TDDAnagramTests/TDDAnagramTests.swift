//
//  TDDAnagramTests.swift
//  TDDAnagramTests
//
//  Created by Francis Adewale on 05/05/2021.
//

import XCTest
@testable import TDDAnagram

class TDDAnagramTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        sut = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        
        sut = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_canReadUserInput() {
        
        //given
        sut.word = "Hello"

        
        //when
        
        let input = sut.returnUsersInputWord(sut.word!, anagramList: nil)
        
        //then
        
        XCTAssertEqual(sut.word, input)
        
    }
    
    func test_canReadBothUserInputs() {
        
        //given
        
        sut.word = "Hello"
        
        sut.list = ["dfgss","john","doe","olleh","helllooooo","new york"]
        
        //when
        
        let input = sut.returnAllUserInput(word: sut.word!, list: sut.list!)
        
        //then
        
        XCTAssertEqual(input.0, sut.word)
        XCTAssertEqual(input.1, sut.list)
        
    }



}
