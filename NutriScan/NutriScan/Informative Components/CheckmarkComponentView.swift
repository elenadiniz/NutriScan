//
//  CheckmarkComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct CheckmarkComponentView: View {
    var body: some View {
        Image(systemName: "checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.primary1)
                    .foregroundColor(.icon1)
                    .clipShape(Circle())
    }
}

#Preview {
    CheckmarkComponentView()
}
