//
//  File.swift
//  OnlineStoreUITests
//
//  Created by Раисат Рамазанова on 19.09.2021.
//

import XCTest

protocol Page {
    var app: XCUIApplication { get }
}

struct PersonalityPageOblect: Page {
    let app: XCUIApplication

    private enum Identifiers {
        static let tabButton = "Профиль"
        static let loginButton = "Войти"
    }

    func loginUser() -> LoginPageObject {
        let tabBar = XCUIApplication().tabBars["Tab Bar"]
        tabBar.buttons[Identifiers.tabButton].tap()
        return LoginPageObject(app: app)
    }

    func tapCancelButton() -> LoginPageObject {
        app.staticTexts[Identifiers.loginButton].tap()
        return LoginPageObject(app: app)
    }
}
