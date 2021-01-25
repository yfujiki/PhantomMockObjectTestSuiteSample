//
//  Logger.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 25/1/21.
//

import Foundation

struct Logger: LoggerProtocol {
    func logAppIsActive() {
        print("App is active")
    }
}
