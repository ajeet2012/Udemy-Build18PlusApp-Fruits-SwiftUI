//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 17/04/26.
//

import SwiftUI

struct SettingLabelView: View {
    
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
    
}
