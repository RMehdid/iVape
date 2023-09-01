//
//  WrapperView.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI
import TabBar
import NavigationStack

struct WrapperView: View {
    @State var selection: TabbarItem = .home
    @State var tbVisibility: TabBarVisibility = .visible
    
    var body: some View {
        NavigationStackView {
            NavigationBar {
                //
            } onBackTap: {
                //
            } onSearchSubmit: { searchText in
                //
            }
            .background(Color.darkPurple)
        } rootView: {
            TabBar(selection: $selection, visibility: $tbVisibility) {
                ForEach(TabbarItem.allCases){ item in
                    item.screen
                        .tabItem(for: item)
                }
            }
            .tabItem(style: CustomTabItemStyle())
            .tabBar(style: CustomTabBarStyle())
            .navigationBarHidden(true)
            .background(Color.black.ignoresSafeArea())
        }
    }
}

#Preview {
    WrapperView()
        .background(Color.black)
}
