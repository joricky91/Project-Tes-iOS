//
//  FoodDataViewModel.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

public class FoodDataViewModel: ObservableObject {
    @Published var foodArray: [Meal] = []
    @Published var foodDetailsArray: [FoodDetail] = []
    var networkManager = NetworkManager()
    var tes: String
    
    public init(tes: String) {
        self.tes = tes
    }
    
    func getFoodData() {
        networkManager.getFoodData { meal in
            self.foodArray = meal
        }
    }
    
    func getFoodDetailsData(foodID: String) {
        networkManager.getFoodDetailsData(mealID: foodID) { detail in
            self.foodDetailsArray = detail
        }
    }
}
