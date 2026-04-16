//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    
    
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            Text("Start")
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        .tint(.white)
    }
}


//MARK: - PREVIEW

#Preview {
    StartButtonView()
}
