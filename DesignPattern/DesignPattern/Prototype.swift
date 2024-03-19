//
//  Prototype.swift
//  DesignPattern
//
//  Created by 김호성 on 2/9/24.
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
