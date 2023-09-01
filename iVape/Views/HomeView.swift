//
//  HomeView.swift
//  iVape
//
//  Created by Samy Mehdid on 27/8/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showDetailCard: Liquid? = Liquid.liquids.first
    
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                if let showDetailCard = showDetailCard {
                    LiquidDetailCard(liquid: showDetailCard)
                } else {
                    VStack(alignment: .leading, spacing: 36){
                        VStack(alignment: .leading, spacing: 4){
                            Text("Top rated - Fruits")
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach(Liquid.liquids) { liquid in
                                        if liquid.type is Fruits.Type {
                                            liquidCard(liquid: liquid) {
                                                withAnimation(.spring(.smooth)) {
                                                    showDetailCard = liquid
                                                }
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        VStack(alignment: .leading, spacing: 4){
                            Text("Top rated - Gouramnds")
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach(Liquid.liquids) { liquid in
                                        if liquid.type is Gourmands.Type {
                                            liquidCard(liquid: liquid) {
                                                withAnimation(.spring(.smooth)) {
                                                    showDetailCard = liquid
                                                }
                                            }
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                    }
                    .padding(.vertical)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(
                LinearGradient(colors: [.darkPurple, .favoritePurple], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(bottomLeading: 16, bottomTrailing: 16)))
            Spacer()
        }
    }
}

#Preview {
    WrapperView()
        .background(Color.black)
}
