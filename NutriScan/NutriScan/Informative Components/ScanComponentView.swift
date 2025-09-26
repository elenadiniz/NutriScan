//
//  ScanComponentView.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/24/25.
//

import SwiftUI

struct ScanComponentView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image("Scan")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width, height: height)
                    .padding(20)
                    .background(Color.primary1)
                    .clipShape(Circle())
    }
}

#Preview {
    ScanComponentView(width: 60, height: 60)
}
