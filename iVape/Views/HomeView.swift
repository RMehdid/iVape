//
//  HomeView.swift
//  iVape
//
//  Created by Samy Mehdid on 27/8/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            NavigationBar()
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
                                        //
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
                                        //
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            
            Spacer()
        }
        .background(
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.16, green: 0.1, blue: 0.25), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.27, green: 0.1, blue: 0.32), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
            )
        )
    }
}

#Preview {
    HomeView()
}
