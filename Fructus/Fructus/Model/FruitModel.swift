//
//  FruitModel.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable, Hashable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
