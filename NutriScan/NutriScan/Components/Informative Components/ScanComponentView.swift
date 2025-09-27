//
//  ScanComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct ScanComponentView: View {
    var body: some View {
        Image("Scan")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(20)
                    .background(Color.primary1)
                    .clipShape(Circle())
    }
}

#Preview {
    ScanComponentView()
}
