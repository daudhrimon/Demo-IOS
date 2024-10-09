//
//  ShopHomeView.swift
//  Demo
//
//  Created by Daud Hoshen on 8/10/24.
//
import SwiftUI

struct ShopHomeView: View {
    @State var searchText: String = ""
    var categories: [String] = [
        "Electronics & Home",
        "Mobile & Gadgets",
        "Computer & Accessories",
        "Unilever Bangladesh",
        "Footwear",
        "Fashion",
        "Essentials",
        "More",
    ]
    var popularBrands: [String] = [
        "Febrilife",
        "Bata",
        "Konka",
        "Bay",
        "Lotto",
        "Motion View",
        "Nike",
        "Adidas",
        "Puma",
        "Reebok",
        "Under Armour",
        "Polo Ralph Lauren",
        "Gucci",
        "Versace",
        "Chanel",
        "Louis Vuitton",
        "Dior"
    ]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Welcome to Shop").padding(.leading, 14)
                Spacer()
                Image(systemName: "cart")
                    .frame(width: 20, height: 20)
            }.padding(.horizontal, 14)
            
            ZStack {
                TextField("", text: $searchText)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.blue.opacity(0.1))
                    .cornerRadius(99)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.blue)
                    Text("Search by products")
                        .foregroundColor(.blue)
                }
            }.padding(.horizontal, 16).padding(.top, 16)
            
            ScrollView(.vertical) {
                VStack {
                    LazyVGrid(
                        columns: [GridItem(), GridItem(), GridItem(), GridItem()],
                        spacing: 6
                    ) {
                        ForEach(categories, id: \.self) { category in
                            ShopHomeCategoryItemView(label: category)
                        }
                    }
                    .padding(.top, 8)
                    .padding(.horizontal, 16)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: .infinity, minHeight: 1, maxHeight: 1)
                        .background(.gray.opacity(0.1))
                        .padding(.top, 16)
                        .padding(.horizontal, 16)
                    
                    HStack {
                        Text("Most Popular Brands 🏆")
                            .foregroundColor(.black)
                        Spacer()
                        Text("See All")
                            .foregroundColor(.black)
                        Image(systemName: "chevron.right")
                            .frame(height: 20)
                            .padding(.trailing, 4)
                    }
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
                    
                    ScrollView(.horizontal) {
                        LazyHGrid(
                            rows: [
                                GridItem(.adaptive(minimum: 50, maximum: .infinity)),
                                GridItem(.adaptive(minimum: 50, maximum: .infinity))
                            ],
                            spacing: 6
                        ) {
                            ForEach(popularBrands, id: \.self) { brand in
                                ShopHomeBrandItemView(label: brand)
                            }
                        }
                        .padding(.vertical, 8)
                        .padding(.leading, 16)
                    }
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ShopHomeView()
}
