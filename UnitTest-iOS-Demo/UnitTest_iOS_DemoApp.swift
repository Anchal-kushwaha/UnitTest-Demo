//
//  UnitTest_iOS_DemoApp.swift
//  UnitTest-iOS-Demo
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import SwiftUI

@main
struct UnitTest_iOS_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(referralDataManager: .init())
        }
    }
}
