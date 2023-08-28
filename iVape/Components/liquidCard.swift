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
                Image(liquid.image)
                    .resizable()
                    .frame(width: 125, height: 225)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
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
