//
//  ParentProtocol.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 11/2/21.
//

protocol ParentProtocol: class {
    var child: ChildProtocol { get set }
    var name: String { get }

    func introduce() -> String
    func rescueChild()
}
