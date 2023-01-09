//
//  FoodListView.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import SwiftUI

public struct FoodListView: View {
    @EnvironmentObject var vm: FoodDataViewModel
    var text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        NavigationView {
            List(vm.foodArray, id: \.id) { food in
                NavigationLink(destination: FoodDetailView(currentFoodID: food.id)) {
                    HStack {
                        Text(food.name)
                        
                        Spacer()
                        
                        AsyncImage(url: URL(string: food.imgURL), content: { image in
                            image
                                .resizable()
                        }, placeholder: {
                            Text("Loading image")
                        })
                        .cornerRadius(5)
                        .frame(width: 50, height: 50)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .onAppear {
                vm.getFoodData()
            }
            .navigationTitle("Food List")
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView(text: "")
            .environmentObject(FoodDataViewModel(tes: ""))
    }
}
