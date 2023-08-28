//
//  LiquidDetailCard.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import SwiftUI

struct LiquidDetailCard: View {
    let liquid: Liquid
    var body: some View {
        ZStack{
            Image("ragnarok")
                .resizable()
                .blur(radius: 2.5)
            VStack{
                Spacer()
                VStack{
                    Text(liquid.make.uppercased())
                        .fontWeight(.bold)
                        .font(.system(size: 26))
                    Text(liquid.name.lowercased())
                        .fontDesign(.rounded)
                        .font(.system(size: 20))
                }
                .foregroundStyle(.white)
                .padding()
                .frame(width: 371, height: 120)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: .black.opacity(0), location: 0.00),
                            Gradient.Stop(color: .black, location: 0.55),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
            }
            HStack{
                Spacer()
                VStack{
                    ForEach(liquid.flavours, id: \.name) { flavour in
                        FlavourLabel(flavour)
                    }
                }
            }
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 50))
    }
}

#Preview {
    LiquidDetailCard(liquid: Liquid.liquids[0])
        .padding()
}
