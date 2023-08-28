//
//  WrapperView.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI
import TabBar

struct WrapperView: View {
    @State var selection: TabbarItem = .home
    @State var tbVisibility: TabBarVisibility = .visible
    
    var body: some View {
        TabBar(selection: $selection, visibility: $tbVisibility) {
            ForEach(TabbarItem.allCases){ item in
                item.screen
                    .tabItem(for: item)
            }
        }
        .tabItem(style: CustomTabItemStyle())
        .tabBar(style: CustomTabBarStyle())
        .shadow(radius: 20)
        .navigationBarHidden(true)
    }
}

#Preview {
    WrapperView()
        .background(Color.black)
}
