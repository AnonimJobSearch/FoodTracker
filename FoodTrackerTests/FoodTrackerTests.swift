//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by pavel on 8/28/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import XCTest
import UIKit
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
    
}
