//
//  Model.swift
//  CrazyApp
//
//  Created by Abdulvoxid on 27/03/25.
//

import Foundation

struct Animal {
    let name: String?
    let image: String
}

struct Animal2 {
    let image: String
}

class AnimalData {
    static let shared = AnimalData()
    
    let animals: [Animal] = [
        Animal(name: "Lion", image: "lionImage"),
        Animal(name: "Elephant", image: "elephantImage"),
        Animal(name: "Eagle", image: "eagleImage")
    ]
    
    let eagles: [Animal2] = [
        Animal2( image: "eagle1"),
        Animal2(image: "eagle2"),
        Animal2( image: "eagle3")
    ]
    
    let lions: [Animal2] = [
        Animal2( image: "lion1"),
        Animal2(image: "lion2"),
        Animal2( image: "lion3")
    ]
    
    let elephants: [Animal2] = [
        Animal2( image: "elephant1"),
        Animal2(image: "elephant2"),
        Animal2( image: "elephant3")
    ]
}
