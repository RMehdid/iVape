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
        ZStack(alignment: .trailing){
            ZStack(alignment: .bottom){
                Image("background")
                    .resizable()
                    .blur(radius: 4)
                Image("sampleLiquid")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250)
                    .padding(.bottom, 40)
                
                HStack{
                    Spacer()
                    VStack{
                        Text(liquid.make.uppercased())
                            .fontWeight(.bold)
                            .font(.system(size: 26))
                        Text(liquid.name.lowercased())
                            .fontDesign(.rounded)
                            .font(.system(size: 20))
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                .padding()
                .frame(height: 120)
                .background(
                    LinearGradient(colors: [
                        .black.opacity(0),
                        .black
                    ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
            VStack{
                ForEach(liquid.flavours, id: \.name) { flavour in
                    FlavourLabel(flavour)
                }
            }
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .scaleEffect(0.8)
    }
}

#Preview {
    LiquidDetailCard(liquid: Liquid.liquids[0])
        .padding()
}
