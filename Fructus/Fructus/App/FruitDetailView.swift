//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 17/04/26.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    //MARK: - BODY
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    Text(fruit.headline)
                        .font(.headline)
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    Text(fruit.description)
                    
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                    
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .frame(maxWidth: 640)
                .frame(maxWidth: .infinity)
            }
        }
        .ignoresSafeArea(edges: [.top])
    }
}

#Preview {
    FruitDetailView(fruit: fruitData.first!)
}
