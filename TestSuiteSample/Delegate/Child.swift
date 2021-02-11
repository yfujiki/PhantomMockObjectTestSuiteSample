//
//  Child.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 11/2/21.
//

import Foundation

class Child: ChildProtocol {
    var name: String
    weak var parent: ParentProtocol?

    init(name: String, parent: ParentProtocol) {
        self.name = name
        self.parent = parent
        self.parent?.child = self
    }

    func introduce() -> String {
        let text = "My name is \(name). I have a parent named \(parent?.name ?? "")"
        NSLog(text)
        return text
    }

    func rescued() {
        NSLog("\(name) is rescued")
    }
}
