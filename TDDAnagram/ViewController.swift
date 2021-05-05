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
        
        let result = returnAnagramValues(word: "listen", list: ["enlists","google","inlets","banana"])
        print(result)
        view.backgroundColor = UIColor.gray
        
    }
    
    
    func returnUsersInputWord( _ word: String, anagramList: [String]?) -> String {
        
        return word
        

    }
    
    func returnAllUserInput(word: String, list: [String]) -> (String, [String]) {
        
        return (word, list)
    }
    
    func returnAnagramValues(word:String, list: [String]) -> [String] {
        
        var output = [String]()

        
        for w in list {
            
            if word.count != w.count {
                continue
            } else {
                
                let newWord = word.sorted()
                let newW = w.sorted()
                
                if newWord == newW {
                    output.append(w)
                }
            }
         
        }
        return output
        
    }
    
}

