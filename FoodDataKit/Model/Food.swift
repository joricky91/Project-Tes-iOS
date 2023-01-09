//
//  Food.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

public struct Meal: Codable {
    var id: String
    var name: String
    var imgURL: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case imgURL = "strMealThumb"
    }
}

public struct MealResponse: Codable {
    let meals: [Meal]
}
