//
//  HeartComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct HeartComponentView: View {
    var body: some View {
        Image(systemName: "suit.heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.iconBackground)
                    .foregroundColor(.icon2)
                    .clipShape(Circle())
    }
}

#Preview {
    HeartComponentView()
}
