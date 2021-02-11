//
//  AViewModel.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 25/1/21.
//

import UIKit

class ViewModel {
    private let logger: LoggerProtocol

    init(logger: LoggerProtocol = Logger()) {
        self.logger = logger
        NotificationCenter.default.addObserver(self, selector: #selector(appDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    @objc func appDidBecomeActive() {
        logger.logAppIsActive()
    }
}
