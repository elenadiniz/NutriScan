//
//  FatComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct FatComponentView: View {
    var body: some View {
        Image("Fat Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.secondary2)
                    .clipShape(Circle())
    }
}

#Preview {
    FatComponentView()
}
