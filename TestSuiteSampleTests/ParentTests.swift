//
//  ParentTests.swift
//  TestSuiteSampleTests
//
//  Created by Yuichi Fujiki on 11/2/21.
//

import XCTest
import Cuckoo
@testable import TestSuiteSample

class ParentTests: XCTestCase {

    var child: MockChildProtocol!
    var sut: Parent!

    override func setUpWithError() throws {
        child = MockChildProtocol()

        Cuckoo.stub(child) { stub in
            when(stub.name.get).thenReturn("Michael")
            when(stub.parent.set(any())).thenDoNothing()
        }
        sut = Parent(name: "Kurt", child: child)
    }

    override func tearDownWithError() throws {
        // If we don't reset mock that has a weak reference property, mock will leak and could cause "No stub for method ..." error when running test suites. Just uncomment following line and this test file will succeed.
//        Cuckoo.reset(child)
        child = nil
        sut = nil
    }

    func testIntroduce() {
        // Given:
        // When:
        let text = sut.introduce()

        // Then:
        XCTAssertEqual(text, "My name is Kurt. I have a child named Michael")
    }

    func testRescueChild() {
        // Given:
        Cuckoo.stub(child) { stub in
            when(stub.rescued()).thenDoNothing()
        }

        // When:
        NotificationCenter.default
            .post(name: childCryingNotification,
                  object: self)

        // Then:
        verify(child).rescued()
    }

}
