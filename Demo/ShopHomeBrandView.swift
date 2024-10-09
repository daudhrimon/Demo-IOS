//
//  ShopHomeBrandView.swift
//  Demo
//
//  Created by Daud Hoshen on 9/10/24.
//
import SwiftUI

struct ShopHomeBrandItemView: View {
    let label: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "star.fill")
                .frame(width: 20, height: 20)
            
            Text(label)
            .multilineTextAlignment(.center)
            .font(.title2)
            .foregroundColor(.black)
            .frame(alignment: .center)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .frame(maxHeight: .infinity, alignment: .center)
        .background(.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    ShopHomeBrandItemView(label: "Shop")
}
