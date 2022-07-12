//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by e.mogilevich on 7/7/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
