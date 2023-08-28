//
//  FlavourLabel.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct FlavourLabel: View {
    let flavour: any Labell
    
    init(_ flavour: any Labell) {
        self.flavour = flavour
    }
    
    var body: some View {
        Image(flavour.name)
            .resizable()
            .frame(width: 24, height: 24)
            .padding(8)
            .background(flavour.color.clipShape(Circle()))
    }
}

#Preview {
    FlavourLabel(Fruits.lemon)
}
