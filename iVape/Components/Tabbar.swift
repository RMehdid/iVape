//
//  Tabbar.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI
import TabBar

enum TabbarItem: Int, CaseIterable, Identifiable, Tabbable {
    var id: UUID { UUID() }
    
    case home = 0
    case favorite
    case cart
    
    var icon: String {
        return "ic_\(self.title)"
    }
    
    var title: String {
        switch self {
        case .home:
            return "home"
        case .favorite:
            return "favorite"
        case .cart:
            return "cart"
        }
    }
    var screen: AnyView {
        switch self {
        case .home:
            return AnyView(HomeView())
        case .favorite:
            return AnyView(FavoriteView())
        case .cart:
            return AnyView(CartView())
        }
    }
}

struct CustomTabBarStyle: TabBarStyle {

    func tabBar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> some View {
            itemsContainer()
            .background(Color("backgroundTabbar"))
            .cornerRadius(18)
    }
}

struct CustomTabItemStyle: TabItemStyle {
    func tabItem(icon: String, title: String, isSelected: Bool) -> some View {
        ZStack {
            VStack(spacing: 0){
                Rectangle()
                    .frame(height: 7)
                    .cornerRadius(7)
                    .padding(.horizontal, 28)
                Image("lightree")
                    .resizable()
                    .frame(width: 130)
                    .scaledToFit()
            }
            .opacity(isSelected ? 0.8 : 0)
            VStack(spacing: 5){
                Image(icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(title)
                    .font(.custom("Rubik-Medium", size: 15))
            }
            .opacity(isSelected ? 1 : 0.7)
        }
        .padding(.bottom, 24)
        .foregroundColor(.white)
    }
}
