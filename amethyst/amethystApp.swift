//
//  amethystApp.swift
//  amethyst
//
//  Created by Angela Wu on 3/6/25.
//

import SwiftUI
import SwiftData

@main
struct amethystApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: watchItem.self)
    }
}
