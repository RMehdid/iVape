//
//  liquidCard.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct liquidCard: View {
    let liquid: Liquid
    
    let action: () -> ()
    var body: some View {
        Button(action: action) {
            ZStack(alignment: .topLeading){
                ZStack(alignment: .bottom){
                    Image("background")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    Image("sampleLiquid")
                        .resizable()
                        .scaledToFit()
                        .padding(.bottom, -10)
                }
                .frame(width: 125, height: 225)
                HStack{
                    Image("ic_star")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String(liquid.rating))
                        .foregroundStyle(Color.black)
                }
                .padding(3)
                .padding(.horizontal, 2)
                .padding(.trailing, 4)
                .background(Color.favoriteOrange)
                .clipShape(RoundedRectangle(cornerRadius: .infinity))
                .padding(6)
            }
            .shadow(radius: 5, x: 4, y: 4)
        }
    }
}

#Preview {
    liquidCard(liquid: Liquid.liquids[0]) { }
}
