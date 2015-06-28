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
  
  func testSeconds() {
    XCTAssertEqual(Titan.seconds(Minute * 1), 60)
    XCTAssertEqual(Titan.seconds(Hour * 1), 60 * 60)
  }
  
  func testSecond() {
    var seconds = Second * 1
    XCTAssertEqual(seconds, 1000 * 1000 * 1000)
  }
}
