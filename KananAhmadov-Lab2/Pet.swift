//
//  Pet.swift
//  KananAhmadov-Lab2
//
//  Created by Ahmadov, Kanan on 9/22/24.
//

import Foundation

class Pet {
    var name: String
    var image: String
    var happiness: Int
    var foodLevel: Int
    var timesPlayed: Int
    var timesFed: Int

    init(name: String, image: String, happiness: Int = 0,
         foodLevel: Int = 0, timesPlayed: Int = 0,
         timesFed: Int = 0) {
        
        self.name = name
        self.image = image
        self.happiness = happiness
        self.foodLevel = foodLevel
        self.timesPlayed = timesPlayed
        self.timesFed = timesFed
    }
   
    // increasing happiness and decreasing food level if the pet can be played with
    func play() -> Bool {
        if foodLevel > 0 {
            happiness += 1
            foodLevel -= 1
            timesPlayed += 1
            return true
        }
        return false
    }
   
    // increasing food level if it's less than 10
    func feed() -> Bool {
        if foodLevel < 10 {
            foodLevel += 1
            timesFed += 1
            return true
        }
        return false
    }
    
}
