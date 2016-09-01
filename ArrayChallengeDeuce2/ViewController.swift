//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // Create your methods here
    
    func addNameToDeliLine(name:String)->String{
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        default:
            if deliLine.count == 0 {
                deliLine.append(name)
                return "Welcome \(name), you're first in line!"
            } else {
            deliLine.append(name)
            return "Welcome \(name), you're number \(deliLine.count) in line."}
        }
                
    }

    
    func nowServing()->String{
        if deliLine.isEmpty {
            return "The line is empty."
        } else {
            var message: String = "The line is:"
            for(index, name) in deliLine.enumerate() {
                message = message + " \(index+1). \(name)"
            }
            return message
        }
        
    }

    
}


