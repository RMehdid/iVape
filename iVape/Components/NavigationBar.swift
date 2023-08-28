//
//  NavigationBar.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct NavigationBar: View {
    @State private var searchText: String = ""
    var body: some View {
        HStack{
            MenuButton {
                
            }
            TextField("search...", text: $searchText)
                .searchFieldStyle()
        }
        .padding()
    }
}

#Preview {
    VStack{
        NavigationBar()
        Spacer()
    }
    .background(Color.black)
}
