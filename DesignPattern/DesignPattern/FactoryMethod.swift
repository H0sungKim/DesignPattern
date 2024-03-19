//
//  FactoryMethod.swift
//  DesignPattern
//
//  Created by 김호성 on 3/19/24.
//

import Foundation

protocol AppleFactory {
    func createElectronics() -> Product
}

class IphoneFactory: AppleFactory {
    func createElectronics() -> Product {
        return IPhone()
    }
}

class IPadFactory: AppleFactory {
    func createElectronics() -> Product {
        return IPad()
    }
}

protocol Product {
    func produceProduct()
}

class IPhone: Product {
    func produceProduct() {
        print("Hello, iPhone was made.")
    }
}

class IPad: Product {
    func produceProduct() {
        print("Hello, iPad was made.")
    }
}

class Client {
    func order(factory: AppleFactory) {
        let electronicsProduct = factory.createElectronics()
        electronicsProduct.produceProduct()
    }
}
