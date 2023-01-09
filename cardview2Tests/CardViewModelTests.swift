//
//  CardViewModelTests.swift
//  cardview2Tests
//
//  Created by Burin Techama on 9/1/2566 BE.
//

import XCTest

class CardViewModelTests: XCTestCase {
    
    func testCardViewWithA1GratherThanA2ShouldReturn1() {
        let model = CardViewModel()
        XCTAssertEqual(model.calculate(a1: 1, a2: 0), 1)
    }
    
    func testCardViewWithA1LessThanA2ShouldReturn2() {
        let model = CardViewModel()
        XCTAssertEqual(model.calculate(a1: 0, a2: 1), 2)
    }
    
}
