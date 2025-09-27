//
//  WarningComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct WarningComponentView: View {
    var body: some View {
        Image(systemName: "exclamationmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.secondary2)
                    .foregroundColor(.alert2)
                    .clipShape(Circle())
    }
}

#Preview {
    WarningComponentView()
}
