//
//  Fruits.swift
//  iVape
//
//  Created by Samy Mehdid on 27/8/2023.
//

import SwiftUI

enum Fruits: String, Labell, CaseIterable {
    
    var id: UUID { UUID() }
    
    var name: String {
        return self.rawValue
    }
    
    var color: Color {
        switch self {
        case .apple:
            return Color(red: 224/255, green: 61/255, blue: 107/255)
        case .banana:
            return Color(red: 255/255, green: 226/255, blue: 57/255)
        case .blueberry:
            return Color(red: 113/255, green: 126/255, blue: 211/255)
        case .freedent:
            return Color(red: 255/255, green: 255/255, blue: 255/255)
        case .lemon:
            return Color(red: 254/255, green: 240/255, blue: 174/255)
        case .mango:
            return Color(red: 243/255, green: 159/255, blue: 90/255)
        case .strawberry:
            return Color(red: 224/255, green: 61/255, blue: 107/255)
        case .watermelon:
            return Color(red: 70/255, green: 158/255, blue: 0/255)
        case .yellowmelon:
            return Color(red: 255/255, green: 226/255, blue: 57/255)
        }
    }
    
    var price: Double { return 500.0 }
    
    case apple
    case banana
    case blueberry
    case freedent
    case lemon
    case mango
    case strawberry
    case watermelon
    case yellowmelon
}
