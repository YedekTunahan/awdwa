//
//  whizzizDemoUITests.swift
//  whizzizDemoUITests
//
//  Created by asuftech on 8.02.2023.
//

import XCTest

final class whizzizDemoUITests: XCTestCase {

  

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        
        let start = XCUIApplication().windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .button).element(boundBy: 0)
        
        
        
        let name = app.collectionViews.textFields["İsim"]
        let surname = app.collectionViews.textFields["Soyisim"]
        let eMailOptionalTextField = app.collectionViews.textFields["E-mail(optional)"]
        let telefonNumaras90TextField = app.collectionViews.textFields["Telefon Numarası(+90)"]
        let check = XCUIApplication().buttons["stop"]
        
        start.tap()
        XCTAssertTrue(start.exists)
  
    }


}
