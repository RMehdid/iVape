//
//  NavigationBar.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct NavigationBar: View {
    @State private var searchText: String = ""
    
    let onMenuTap: () -> Void
    let onBackTap: (() -> Void)?
    let onSearchSubmit: (String) -> Void
    
    init(onMenuTap: @escaping () -> Void, onBackTap: (() -> Void)? = nil, onSearchSubmit: @escaping (String) -> Void) {
        self.onMenuTap = onMenuTap
        self.onBackTap = onBackTap
        self.onSearchSubmit = onSearchSubmit
    }
    
    var body: some View {
        HStack{
            Image(systemName: onBackTap != nil ? "chevron.backward" : "sidebar.left")
                .iVapeButtonModifier {
                    if let onBackTap = onBackTap {
                        onBackTap()
                    } else {
                        
                    }
                }
            TextField("search...", text: $searchText)
                .onSubmit {
                    onSearchSubmit(searchText)
                }
                .searchFieldStyle()
        }
        .padding()
    }
}

#Preview {
    VStack{
        NavigationBar {
            //
        } onSearchSubmit: { searchText in
            //
        }

        Spacer()
    }
    .background(Color.black)
}
