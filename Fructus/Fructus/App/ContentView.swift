//
//  ContentView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    @State private var selectedFruit: Fruit?
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        
        NavigationSplitView {
            // LEFT SIDE (List)
            List(fruits, selection: $selectedFruit) { fruit in
                FruitRowView(fruit: fruit)
                    .tag(fruit)
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            
        } detail: {
            // RIGHT SIDE (Detail)
            if let fruit = selectedFruit {
                FruitDetailView(fruit: fruit)
            } else {
                Text("Select a fruit")
                    .foregroundColor(.gray)
            }
        }
        .sheet(isPresented: $isShowingSettings) {
            SettingView()
        }
        .onAppear {
            selectedFruit = fruits.first
        }
    }
}

#Preview {
    ContentView(fruits: fruitData)
}
