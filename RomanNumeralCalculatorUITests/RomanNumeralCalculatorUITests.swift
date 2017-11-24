//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Pete Barnes on 11/24/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared.orientation = .portrait
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddOnePlusOne() {
        
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"II\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        app.buttons["Clear"].tap()
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        app.buttons["+"].tap()
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "II")
        
    }
    
}
