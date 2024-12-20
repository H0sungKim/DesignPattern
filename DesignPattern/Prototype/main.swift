//
//  main.swift
//  Prototype
//
//  Created by 김호성 on 2024.09.16.
//

import Foundation

protocol Prototype: AnyObject {
    func clone() -> Self
}

class Odongnamu: Prototype {
    var age: Int

    init(age: Int) {
        self.age = age
    }

    func clone() -> Self {
        return Odongnamu(age: self.age) as! Self
    }
    
    func printInfo() {
        print("Odongnamu \(age)")
    }
}


let odongnamu = Odongnamu(age: 500)
odongnamu.printInfo()

let odongnamu2 = odongnamu.clone()
odongnamu2.age += 30
odongnamu2.printInfo()
