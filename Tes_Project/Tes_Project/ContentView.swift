//
//  ContentView.swift
//  Tes_Project
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import SwiftUI
import FoodDataKit

struct ContentView: View {
    var body: some View {
        FoodListView(text: "This is a list of available food recipe from API Database.")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FoodDataViewModel(tes: ""))
    }
}
