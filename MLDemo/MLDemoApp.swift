//
//  MLDemoApp.swift
//  MLDemo
//
//  Created by Angelos Staboulis on 9/12/24.
//

import SwiftUI

@main
struct MLDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(review: "", predict:.init(model: .init()), prediction: .init(label: ""))
           
        }
    }
}
