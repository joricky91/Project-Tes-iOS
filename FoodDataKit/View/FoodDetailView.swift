//
//  FoodDetailView.swift
//  FoodDataKit
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import SwiftUI

struct FoodDetailView: View {
    @EnvironmentObject var vm: FoodDataViewModel
    var currentFoodID: String = ""
    
    var body: some View {
        ScrollView {
            ForEach(vm.foodDetailsArray, id: \.id) { detail in
                VStack(alignment: .leading) {
                    Text(detail.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    
                    HStack() {
                        AsyncImage(url: URL(string: detail.imageURL), content: { image in
                            image
                                .resizable()
                        }, placeholder: {
                            Text("Loading image")
                        })
                        .cornerRadius(5)
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
                        
                        VStack(alignment: .leading) {
                            Text("**Category:** \(detail.category)")
                            
                            Text("**Area:** \(detail.area)")
                            
                            Text("**Tags:** \(detail.foodTags != nil ? detail.foodTags ?? "" : "No tag.")")
                            
                            Text("**Video Link**: ")
                            Link(destination: URL(string: detail.videoURL)!) {
                                Text(detail.name)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    .padding(.bottom)
                    
                    Text(detail.instructions)
                }
            }
            .padding()
            .onAppear {
                vm.getFoodDetailsData(foodID: currentFoodID)
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
            .environmentObject(FoodDataViewModel(tes: ""))
    }
}
