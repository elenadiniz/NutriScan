//
//  IntestineComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct IntestineComponentView: View {
    var body: some View {
        Image("Intestine Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.secondary1)
                    .clipShape(Circle())
    }
}

#Preview {
    IntestineComponentView()
}
