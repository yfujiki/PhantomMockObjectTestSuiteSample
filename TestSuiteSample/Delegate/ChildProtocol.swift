//
//  ChildProtocol.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 11/2/21.
//

protocol ChildProtocol: class {
    var parent: ParentProtocol? { get set }
    var name: String { get }

    func introduce() -> String
    func rescued()
}
