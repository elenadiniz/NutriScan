//
//  CustomTabBar.swift
//  NutriScan
//
//  Created by Elena Diniz on 9/25/25.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        HStack {
            Button {
                //Mudar para Home
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 8) {
                        Rectangle()
                            .foregroundColor(.neutral3)
                            .frame(width: 100, height: 0.5)
                        Image(systemName: "house")
                            .font(.system(size: 20))
                            .frame(width: 24, height: 24)
                        Text("Home")
                            .font(.caption)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(Color.primary1)
            
            Button {
                //Mudar para Busca
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 8) {
                        Rectangle()
                            .foregroundColor(.neutral3)
                            .frame(width: 100, height: 0.5)
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .frame(width: 24, height: 24)
                        Text("Pesquisa")
                            .font(.caption)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(Color.primary1)
            
            Button {
                //Scanear
            } label: {
                GeometryReader { geo in
                    VStack  {
                        ScanComponentView(width: 30, height: 30)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 70, height: 30)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            
            Button {
                //Mudar para Favoritos
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 8) {
                        Rectangle()
                            .foregroundColor(.neutral3)
                            .frame(width: 100, height: 0.5)
                        Image(systemName: "heart")
                            .font(.system(size: 20))
                            .frame(width: 24, height: 24)
                        Text("Favoritos")
                            .font(.caption)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(Color.primary1)
            
            Button {
                //Mudar para Perfil
            } label: {
                GeometryReader { geo in
                    VStack (alignment: .center, spacing: 8) {
                        Rectangle()
                            .foregroundColor(.neutral3)
                            .frame(width: 100, height: 0.5)
                        Image(systemName: "person")
                            .font(.system(size: 20))
                            .frame(width: 24, height: 24)
                        Text("Perfil")
                            .font(.caption)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(Color.primary1)
        }
        .frame(height: 68)
    }
}

#Preview {
    CustomTabBar()
}
