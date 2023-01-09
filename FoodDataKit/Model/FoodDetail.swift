//
//  FoodDetail.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

public struct FoodDetail: Codable {
    var id: String
    var name: String
    var category: String
    var area: String
    var instructions: String
    var imageURL: String
    var videoURL: String
    var foodTags: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case category = "strCategory"
        case area = "strArea"
        case instructions = "strInstructions"
        case imageURL = "strMealThumb"
        case videoURL = "strYoutube"
        case foodTags = "strTags"
    }
}

public struct FoodDetailResponse: Codable {
    var meals: [FoodDetail]
}
