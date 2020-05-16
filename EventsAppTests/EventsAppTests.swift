//
//  EventsAppTests.swift
//  EventsAppTests
//
//  Created by Faiçal Hasni on 5/13/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import XCTest
@testable import EventsApp

class EventsAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let coreDataManager = CoreDataManager()
        coreDataManager.saveEvent(name: "Birthday", date: Date(), image: #imageLiteral(resourceName: "birthday"))
        print(coreDataManager.fetchEvents())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
