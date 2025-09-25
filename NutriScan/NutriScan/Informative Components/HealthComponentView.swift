//
//  HealthComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct HealthComponentView: View {
    var body: some View {
        Image("Muscle Arm Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.secondary3)
                    .clipShape(Circle())
    }
}

#Preview {
    HealthComponentView()
}
