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



}
