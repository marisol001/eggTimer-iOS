//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    let eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]
    var count = 60
    var counter = 30

    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let title = sender.currentTitle!
        
        print(eggTime[title]!)
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
        }
    }
}
