//
//  SnapshotTest.swift
//  OnlineStoreUITests
//
//  Created by Раисат Рамазанова on 20.09.2021.
//
//
import XCTest
import SnapshotTesting

@testable import OnlineStore

final class ScreenTests: XCTestCase {
    var sut: TabBarController?

    override func setUp() {
        sut = TabBarController()
    }

    override func tearDown() {
        sut = nil
    }

    func test_screenSnapshot() {
        assertSnapshot(matching: sut!, as: .image(on: .iPhoneSe))
    }
}
