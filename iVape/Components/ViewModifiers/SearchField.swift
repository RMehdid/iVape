//
//  SearchField.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct SearchFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            content
            Spacer()
            Image("ic_search")
                .resizable()
                .frame(width: 24, height: 24)
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
        .background(Color.white.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .foregroundStyle(.white)
    }
}

#Preview {
    VStack{
        NavigationBar()
        Spacer()
    }
    .background(Color.black)
}
