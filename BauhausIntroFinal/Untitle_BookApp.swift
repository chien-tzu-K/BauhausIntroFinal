//
//  Untitle_BookApp.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/13.
//

import SwiftUI

@main
struct Untitle_BookApp: App {

    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color.color1)

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
