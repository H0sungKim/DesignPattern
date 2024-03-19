//
//  Builder.swift
//  DesignPattern
//
//  Created by 김호성 on 2/5/24.
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
