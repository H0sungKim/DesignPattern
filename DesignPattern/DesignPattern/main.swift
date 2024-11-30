//
//  main.swift
//  DesignPattern
//
//  Created by 김호성 on 2/5/24.
//

import Foundation

enum DesignPatterns {
    case builder
    case prototype
    case factorymethod
    case abstractfactorymethod
}

func runDesignPattern(designPattern: DesignPatterns) {
    switch designPattern {
        
    case .builder:
        let builder = MacBookBuilder()
        let macBook1 = builder.setColor("Silver").setMemory(32).setStorage("512").setHasTouchBar(true).build()
        let macBook2 = builder.setMemory(32).setStorage("1TB").build()
        let macBook3 = builder.build()
        macBook1.printInfo()
        macBook2.printInfo()
        macBook3.printInfo()
        
    case .prototype:
        let odongnamu = Odongnamu(age: 500)
        odongnamu.printInfo()

        let odongnamu2 = odongnamu.clone()
        odongnamu2.age += 30
        odongnamu2.printInfo()
        
    case .factorymethod:
        var client = Client()
        client.order(factory: IPadFactory())
        client.order(factory: IphoneFactory())
    
    case .abstractfactorymethod:
        let uiFactory1: UIFactoryable = IphoneFactory()
        let uiFactory2: UIFactoryable = IPadFactory()
        
        
        
    }
    
}

// run
runDesignPattern(designPattern: .factorymethod)
