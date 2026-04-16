//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: -  BODY
    
    var body: some View {
        TabView {
            
            
            ForEach(0..<5) { item in
                FruitCardView()
            }//: LOOP
            
            
        }// : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
