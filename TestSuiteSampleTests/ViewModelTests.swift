//
//  ViewModelTests.swift
//  TestSuiteSampleTests
//
//  Created by Yuichi Fujiki on 25/1/21.
//

import XCTest
import Cuckoo

@testable import TestSuiteSample

class ViewModelTests: XCTestCase {

    var sut: ViewModel!
    var logger: MockLoggerProtocol!

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
        // If we don't nil out instance variables, then mock will leak and it could cause "No stub for method ..." error when running test suites
        // logger = nil
        // sut = nil
    }

    func testAInit() {
        // Given:
        logger = MockLoggerProtocol()

        // When:
        sut = ViewModel(logger: logger)

        // Then:
        XCTAssertTrue(true, "Passed")
    }

    func testAppDidBecomeActive() {
        // Given:
        logger = MockLoggerProtocol()
        sut = ViewModel(logger: logger)
        Cuckoo.stub(logger) { stub in
            when(stub.logAppIsActive()).thenDoNothing()
        }

        // When:
        NotificationCenter.default.post(name: UIApplication.didBecomeActiveNotification, object: self)

        // Then:
        verify(logger, times(1)).logAppIsActive()
    }
}
