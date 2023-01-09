//
//  NetworkModel.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

public class NetworkManager {
    
    func getFoodData(completion: @escaping ([Meal]) -> Void) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("error\(error)")
            }
            
            guard let data = data else { return }
            
            do {
                let decoded = try JSONDecoder().decode(MealResponse.self, from: data)
                
                DispatchQueue.main.async {
                    completion(decoded.meals)
                }
            }
            catch let error {
                print("Error\(error)")
            }
        }
        .resume()
    }
    
    public func getFoodDetailsData(mealID: String, completion: @escaping ([FoodDetail]) -> Void) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("error\(error)")
            }
            
            guard let data = data else { return }
            
            do {
                let decoded = try JSONDecoder().decode(FoodDetailResponse.self, from: data)
                
                DispatchQueue.main.async {
                    completion(decoded.meals)
                }
            }
            catch let error {
                print("Error\(error)")
            }
        }
        .resume()
    }
    
}

