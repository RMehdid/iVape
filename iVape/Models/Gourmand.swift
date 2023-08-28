//
//  Gourmand.swift
//  iVape
//
//  Created by Samy Mehdid on 27/8/2023.
//

import SwiftUI

enum Gourmands: String, Labell, CaseIterable {
    
    var id: UUID { UUID() }
    
    var name: String {
        return self.rawValue
    }
    
    var color: Color {
        switch self {
        case .chocolate:
            return Color(red: 98/255, green: 55/255, blue: 25/255)
        case .cookies:
            return Color(red: 277/255, green: 170/255, blue: 117/255)
        case .cake:
            return Color(red: 255/255, green: 203/255, blue: 124/255)
        case .caramel:
            return Color(red: 249/255, green: 136/255, blue: 36/255)
        case .cereal:
            return Color(red: 194/255, green: 62/255, blue: 72/255)
        case .pestachio:
            return Color(red: 249/255, green: 203/255, blue: 102/255)
        }
    }
    
    var price: Double { return 600.0 }
    
    case chocolate
    case cookies
    case cake
    case caramel
    case cereal
    case pestachio
}
