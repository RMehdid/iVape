//
//  Image.swift
//  iVape
//
//  Created by Samy Mehdid on 29/8/2023.
//

import SwiftUI

extension Image {
    func iVapeButtonModifier(action: @escaping () -> ()) -> some View {
        Button(action: action) {
            self
                .resizable()
                .frame(width: 16, height: 20)
                .padding(.vertical, 8)
                .padding(.horizontal, 10)
                .background(Color.white.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}
