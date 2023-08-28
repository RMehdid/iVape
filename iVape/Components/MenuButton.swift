//
//  MenuButton.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct MenuButton: View {
    let action: () -> ()
    var body: some View {
        Button(action: action) {
            Image("ic_menu")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(8)
                .background(Color.white.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    VStack{
        NavigationBar()
        Spacer()
    }
    .background(Color.black)
}
