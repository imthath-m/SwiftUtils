//
//  main.swift
//  UtilitiesExample
//
//  Created by Imthath M on 28/03/19.
//  No Copyright.
//

import Foundation

//let innova = Vehicle(brand: "Toyata", model: "TI-1025", seatingCapacity: 7)
//FileIO.save(innova, to: "vehicle", as: .text)
//FileIO.save(innova, to: "car", as: .json)
//let text: Vehicle? = FileIO.getOjbectFromFile(named: "vehicle", withType: .text)
//let json: Vehicle? = FileIO.getOjbectFromFile(named: "car", withType: .json)
//print(text)
//print(json)
//print(innova.jsonString!)
//
//var swift = Vehicle(brand: "Maruti", model: nil, seatingCapacity: 5)
////swift.model = "A-638"
//print(swift.jsonString!)

//let numbers = [1, 2, 3, 4, 5, 6]
//print(numbers.repeatingList(of: 8))

//var numbers = [1,2,3,4,5,6,4,2,6,4,1,1,7,8]
//
//numbers.uniqueCount().forEach { key, value in
//    print("\(key) is present \(value) times")
//}

//func find(word: String, in sentence: String) -> Int {
//    for (index, character) in sentence.enumerated() {
//        var nextChar = character
//        for (ind, char) in word.enumerated() {
//            if char != nextChar { break }
//            if char == word.last { return index }
//            nextChar = sentence[index + ind + 1]
//        }
//    }
//    return 0
//}

//let sentence: [Character] = Array("this is the test sentence")
//let word: [Character] = Array("enot")
//print(sentence.findMatch(like: word))
//let avenger: Vehicle? = FileIO.getOjbectFromFile(named: "avenger", withType: "json")
//print(avenger?.jsonString)
//let cars: [Vehicle] = FileIO.getOjbectsFromFile(named: "car", withType: "json")
//cars.forEach { print($0.jsonString!) }

//let email = "imthath.m@gmail.com"
//print(email.isEmail)
//let mobile = " 537-028- 03 13"
//print(mobile.isMobileNumber)
//let phone = 9894022092
//print(phone.isMobile)

//var animals = ["cat", "mouse", "dog", "frog"]
//animals.remove("fr og")
//print(animals)
//print(animals.removeAndReturn(where: {$0.count == 3}))
//print(animals.indices(where: {$0.count == 3}))
