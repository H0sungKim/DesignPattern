//
//  main.swift
//  Builder
//
//  Created by 김호성 on 2024.09.16.
//

import Foundation

struct MacBook {
    let color: String
    let memory: Int
    let storage: String
    let hasTouchBar: Bool
    
    func printInfo() {
        print("MacBook : \(color) \(memory) \(storage) \(hasTouchBar)")
    }
}

class MacBookBuilder {
    private var color = "Space Gray"
    private var memory = 16
    private var storage = "256GB"
    private var hasTouchBar = false

    func setColor(_ color: String) -> MacBookBuilder {
        self.color = color
        return self
    }

    func setMemory(_ memory: Int) -> MacBookBuilder {
        self.memory = memory
        return self
    }

    func setStorage(_ storage: String) -> MacBookBuilder {
        self.storage = storage
        return self
    }

    func setHasTouchBar(_ has: Bool) -> MacBookBuilder {
        self.hasTouchBar = has
        return self
    }

    func build() -> MacBook {
        return MacBook(color: color, memory: memory, storage: storage, hasTouchBar: hasTouchBar)
    }
}


let builder = MacBookBuilder()
let macBook1 = builder.setColor("Silver").setMemory(32).setStorage("512").setHasTouchBar(true).build()
let macBook2 = builder.setMemory(32).setStorage("1TB").build()
let macBook3 = builder.build()
macBook1.printInfo()
macBook2.printInfo()
macBook3.printInfo()
