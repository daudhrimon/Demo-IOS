//
//  ShopHomeCategoryButton.swift
//  Demo
//
//  Created by Daud Hoshen on 9/10/24.
//
import SwiftUI

struct ShopHomeCategoryItemView: View {
    let label: String
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: "cart")
                .frame(width: 28, height: 28)
            
            Text(label)
            .multilineTextAlignment(.center)
            .font(.caption2)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
        .background(.gray.opacity(0.1))
        .cornerRadius(12)
    }
}

#Preview {
    ShopHomeCategoryItemView(label: "Shop")
}
