//
//  SettingRowView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 17/04/26.
//

import SwiftUI

struct SettingRowView: View {
    
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 5)
            
            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string:"https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                        .padding(.leading, 10)
                }
                
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 120)) {
    SettingRowView(name: "Developer", content: "John/Jane")
        .padding()
    
    SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
        .padding()
}
