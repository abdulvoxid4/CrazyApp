//
//  Model.swift
//  CrazyApp
//
//  Created by Abdulvoxid on 27/03/25.
//

import Foundation

struct Animal {
    let name: String
    let image: String
}

class AnimalData {
    static let shared = AnimalData()
    
    let animals: [Animal] = [
        Animal(name: "Lion", image: "lionImage"),
        Animal(name: "Elephant", image: "elephantImage"),
        Animal(name: "Eagle", image: "eagleImage")
    ]
}
