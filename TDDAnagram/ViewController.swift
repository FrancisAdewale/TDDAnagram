//
//  ViewController.swift
//  TDDAnagram
//
//  Created by Francis Adewale on 05/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var word: String?
    var list: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        
    }
    
    
    func returnUsersInputWord( _ word: String, anagramList: [String]?) -> String {
        
        return word
        

    }
    
    func returnAllUserInput(word: String, list: [String]) -> (String, [String]) {
        
        return (word, list)
    }

}

