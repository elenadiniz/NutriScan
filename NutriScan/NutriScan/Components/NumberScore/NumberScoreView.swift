//
//  NumberScoreView.swift
//  NutriScan
//
//  Created by Mateus Andreatta on 27/09/25.
//

import SwiftUI

struct NumberScoreView: View {
    
    let numberScore: NumberScore
    
    var body: some View {
        VStack {
            Text(numberScore.label)
                .foregroundStyle(.white)
                .padding(7)
        }
        .background(numberScore.color)
        .cornerRadius(6)
    }
}

#Preview {
    
    VStack {
        NumberScoreView(numberScore: .scoreA)
        NumberScoreView(numberScore: .scoreB)
        NumberScoreView(numberScore: .scoreC)
        NumberScoreView(numberScore: .scoreD)
        NumberScoreView(numberScore: .scoreE)
    }

}
