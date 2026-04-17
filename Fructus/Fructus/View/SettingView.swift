//
//  SettingView.swift
//  Fructus
//
//  Created by Ajeet Sharma on 17/04/26.
//

import SwiftUI

struct SettingView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.isPresented) private var presentMode
    @Environment(\.dismiss) private var dismiss
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION - 1
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally are in fat, sodium, and calories. None have cholesterol. Fruits are source of many essential nutrients, including vitamins A, C, and K, as well as folate, potassium, and fiber.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - SECTION - 2
                    
                    
                    // MARK: - SECTION - 3
                    
                }
            }//:SCROLL
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
            .navigationTitle(Text("Settings"))
            .navigationBarTitleDisplayMode(.large)
            .padding()
        }
        
    }
}

#Preview {
    SettingView()
}
