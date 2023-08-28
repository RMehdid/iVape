//
//  View.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

extension View {
    func searchFieldStyle() -> some View {
        self.modifier(SearchFieldModifier())
    }
}
