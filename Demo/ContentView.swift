//
//  ContentView.swift
//  Demo
//
//  Created by Daud Hoshen on 8/10/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: ShopHomeView()
            ) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Shop")
            }
        }
    }
}

#Preview {
    ContentView()
}
