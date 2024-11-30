//
//  AbstractFactoryMethod.swift
//  DesignPattern
//
//  Created by 김호성 on 3/19/24.
//

import Foundation

protocol UIFactoryable {
    func createButton() -> Buttonable
    func createLabel() -> Labelable
}

final class iPadUIFactory: UIFactoryable {
    func createButton() -> Buttonable {
         return IPadButton()
    }
    
    func createLabel() -> Labelable {
        return IPadLabel()
    }
}

final class iPhoneUIFactory: UIFactoryable {
    func createButton() -> Buttonable {
        return IPhoneButton()
    }
    
    func createLabel() -> Labelable {
        return IPhoneLabel()
    }
}

protocol Buttonable {
    func touchUp()
}

protocol Labelable {
    var title: String { get }
}

final class IPhoneButton: Buttonable {
    func touchUp() {
        print("iPhoneButton")
    }
}

final class IPadButton: Buttonable {
    func touchUp() {
        print("iPadButton")
    }
}

final class IPhoneLabel: Labelable {
    var title: String = "iPhoneLabel"
}

final class IPadLabel: Labelable {
    var title: String = "iPadLabel"
}
