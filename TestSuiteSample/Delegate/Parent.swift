//
//  Parent.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 11/2/21.
//

import Foundation

let childCryingNotification = Notification.Name(rawValue: "Child is crying")

class Parent: ParentProtocol {
    var name: String
    var child: ChildProtocol

    init(name: String, child: ChildProtocol) {
        self.name = name
        self.child = child
        self.child.parent = self

        NotificationCenter.default.addObserver(self, selector: #selector(rescueChild), name: childCryingNotification, object: nil)
    }

    func introduce() -> String {
        let text = "My name is \(name). I have a child named \(child.name)"
        NSLog(text)
        return text
    }

    @objc func rescueChild() {
        child.rescued()
    }
}
