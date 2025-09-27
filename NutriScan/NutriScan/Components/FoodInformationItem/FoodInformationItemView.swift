//
//  FoodInformationItemView.swift
//  NutriScan
//
//  Created by Mateus Andreatta on 27/09/25.
//

import SwiftUI

struct FoodInformationItemView: View {
    
    let foodInformation: FoodInformation
    
    var body: some View {
        HStack {
            AsyncImage(url: foodInformation.imageUrl)
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(foodInformation.name)
                    .foregroundStyle(.neutralColor1)
                Text(foodInformation.brand)
                    .foregroundStyle(.neutralColor2)
            }
            Spacer()
            NumberScoreView(numberScore: foodInformation.score)
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

#Preview {
    guard let url = URL(string: "https://placehold.co/60") else { return EmptyView() }
    let foodInformation = FoodInformation(name: "Leite condensado",
                                          brand: "Italac",
                                          imageUrl: url,
                                          score: .scoreE)
    return FoodInformationItemView(foodInformation: foodInformation)
}
