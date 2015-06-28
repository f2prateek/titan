//
//  TitanTests.swift
//  TitanTests
//
//  Created by Prateek Srivastava on 2015-06-28.
//  Copyright (c) 2015 f2prateek. All rights reserved.
//

import UIKit
import XCTest
import Titan

class TitanTests: XCTestCase {
  
  func testNanoseconds() {
    XCTAssertEqual(Titan.nanoseconds(Nanosecond * 1), 1)
    XCTAssertEqual(Titan.nanoseconds(Microsecond * 1), 1000)
    XCTAssertEqual(Titan.nanoseconds(Millisecond * 1), Int64(1e6))
    XCTAssertEqual(Titan.nanoseconds(Second * 1), Int64(1e9))
    XCTAssertEqual(Titan.nanoseconds(Minute * 1), Int64(60 * 1e9))
    XCTAssertEqual(Titan.nanoseconds(Hour * 1), Int64(60 * 60 * 1e9))
  }

  func testSeconds() {
    XCTAssertEqual(Titan.seconds(Nanosecond * 1), 1e-9)
    XCTAssertEqualWithAccuracy(Titan.seconds(Microsecond * 1), 1e-6, 0.1, "")
    XCTAssertEqual(Titan.seconds(Millisecond * 1), 0.001)
    XCTAssertEqual(Titan.seconds(Second * 1), 1)
    XCTAssertEqual(Titan.seconds(Minute * 1), 60)
    XCTAssertEqual(Titan.seconds(Hour * 1), 60 * 60)
  }
  
  func testMinutes() {
    XCTAssertEqual(Titan.minutes(Nanosecond * 1), 1e-9)
    XCTAssertEqual(Titan.minutes(Microsecond * 1), 1e-6)
    XCTAssertEqual(Titan.minutes(Millisecond * 1), 1e-3)
    XCTAssertEqual(Titan.minutes(Second * 1), 1)
    XCTAssertEqual(Titan.minutes(Minute * 1), 1)
    XCTAssertEqual(Titan.minutes(Hour * 1), 60)
  }

  func testHours() {
    XCTAssertEqual(Titan.hours(Nanosecond * 1), 1e-9)
    XCTAssertEqual(Titan.hours(Microsecond * 1), 1e-6)
    XCTAssertEqual(Titan.hours(Millisecond * 1), 0.001)
    XCTAssertEqual(Titan.hours(Second * 1), 1)
    XCTAssertEqual(Titan.hours(Minute * 1), 60)
    XCTAssertEqual(Titan.hours(Hour * 1), 60 * 60)
  }
}
