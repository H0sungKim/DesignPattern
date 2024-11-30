//
//  main.swift
//  AbstractFactoryMethod
//
//  Created by 김호성 on 2024.09.16.
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


class ViewController: UIViewController {

    var iPadUIContent = UIContent(uiFactory: iPadUIFactory())
    var iPhoneUIContent = UIContent()

    override func viewDidLoad() {
        super.viewDidLoad()
        touchUpButton()
        printLabelTitle()
    }

    func touchUpButton() {
        iPadUIContent.button?.touchUp()
        iPhoneUIContent.button?.touchUp()
    }

    func printLabelTitle() {
        print(iPadUIContent.label?.title ?? "")
        print(iPhoneUIContent.label?.title ?? "")
    }
}

class UIContent {
    var uiFactory: UIFactoryable
    var label: Labelable?
    var button: Buttonable?

    init(uiFactory: UIFactoryable = iPhoneUIFactory()) {
        self.uiFactory = uiFactory
        setUpUI()
    }

    func setUpUI() {
        label = uiFactory.createLabel()
        button = uiFactory.createButton()
    }
}
