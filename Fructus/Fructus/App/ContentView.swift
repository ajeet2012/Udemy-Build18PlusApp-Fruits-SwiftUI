//
//  ContentView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit]  = fruitData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(fruits) { fruit in   // ❗️remove shuffled here
                    NavigationLink(value: fruit) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationDestination(for: Fruit.self) { fruit in
                FruitDetailView(fruit: fruit)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingView()
            }
        }
        
        
    }
}

#Preview {
    ContentView(fruits: fruitData)
}
