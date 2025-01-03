//
//  ClassStruct.swift
//  SecondApp
//
//  Created by 구현 on 1/2/25.
//

import Foundation

class Monster {
    var clothes: String
    var speed: Int
    var power: Int
    var experience: Int
    
    init(clothes: String, speed: Int, power: Int, experience: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
        self.experience = experience
    }
}

class BossMonster: Monster {
    
}

struct MonsterStruct {
    var clothes: String
    var speed: Int
    var power: Int
    var experience: Int
}
