//
//  Tes_ProjectApp.swift
//  Tes_Project
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import SwiftUI
import FoodDataKit

@main
struct Tes_ProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(FoodDataViewModel(tes: ""))
        }
    }
}
