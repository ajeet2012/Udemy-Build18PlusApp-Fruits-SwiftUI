//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitData
    
    //MARK: -  BODY
    
    var body: some View {
        TabView {
            
            
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }//: LOOP
            
            
        }// : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
