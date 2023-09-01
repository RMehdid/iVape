//
//  Liquid.swift
//  iVape
//
//  Created by Samy Mehdid on 28/8/2023.
//

import Foundation

struct Liquid: Identifiable {
    var id: UUID { UUID() }
    let make: String
    let name: String
    let image: String
    let rating: Double
    
    let sweet: Double
    let nicotine: Double
    let freshness: Double
    
    let flavours: [any Labell]
    
    var type: any Labell.Type {
        return flavours.contains(where: { $0.self is Gourmands }) ? Gourmands.self : Fruits.self
    }
    
    static let liquids: [Liquid] = [
        Liquid(make: "A&L", name: "ragnarok", image: "ragnarok", rating: 4.7, sweet: 2.5, nicotine: 0.3, freshness: 3.2, flavours: [Fruits.apple, Fruits.blueberry]),
        Liquid(make: "Madame", name: "labaronne", image: "ragnarok", rating: 4.7, sweet: 2.8, nicotine: 0.4, freshness: 2.9, flavours: [Gourmands.caramel, Gourmands.cookies]),
        Liquid(make: "Vendor", name: "vendor flavor", image: "ragnarok", rating: 4.5, sweet: 3.2, nicotine: 0.5, freshness: 2.7, flavours: [Fruits.apple, Gourmands.chocolate]),
        Liquid(make: "Fruit Paradise", name: "tropical delight", image: "ragnarok", rating: 4.8, sweet: 2.2, nicotine: 0.2, freshness: 3.6, flavours: [Fruits.mango, Fruits.watermelon]),
        Liquid(make: "Sweet Dreams", name: "chocolate delight", image: "ragnarok", rating: 4.6, sweet: 2.6, nicotine: 0.3, freshness: 3.1, flavours: [Gourmands.chocolate, Gourmands.cake]),
        Liquid(make: "Berry Bliss", name: "mixed berries", image: "ragnarok", rating: 4.5, sweet: 2.9, nicotine: 0.2, freshness: 3.4, flavours: [Fruits.blueberry, Fruits.strawberry]),
        Liquid(make: "Summer Sorbet", name: "refreshing citrus", image: "ragnarok", rating: 4.9, sweet: 3.1, nicotine: 0.1, freshness: 3.8, flavours: [Fruits.lemon, Fruits.yellowmelon]),
        Liquid(make: "Caramel Craving", name: "rich caramel", image: "ragnarok", rating: 4.4, sweet: 3.5, nicotine: 0.2, freshness: 2.6, flavours: [Gourmands.caramel]),
        Liquid(make: "Exotic Fusion", name: "tropical fusion", image: "ragnarok", rating: 4.6, sweet: 2.8, nicotine: 0.3, freshness: 3.3, flavours: [Fruits.mango, Fruits.apple]),
        Liquid(make: "Vanilla Dream", name: "creamy vanilla", image: "ragnarok", rating: 4.8, sweet: 2.7, nicotine: 0.2, freshness: 3.5, flavours: [Gourmands.cake, Gourmands.cookies]),
        Liquid(make: "Tangy Twist", name: "zesty lime", image: "ragnarok", rating: 4.3, sweet: 3.3, nicotine: 0.1, freshness: 3.0, flavours: [Fruits.lemon, Fruits.lemon]),
        Liquid(make: "Citrus Burst", name: "citrus explosion", image: "ragnarok", rating: 4.7, sweet: 2.9, nicotine: 0.2, freshness: 3.4, flavours: [Fruits.yellowmelon, Fruits.lemon]),
        Liquid(make: "Classic Custard", name: "creamy custard", image: "ragnarok", rating: 4.9, sweet: 2.4, nicotine: 0.3, freshness: 3.7, flavours: [Gourmands.cake, Gourmands.caramel]),
        Liquid(make: "Mango Madness", name: "intense mango", image: "ragnarok", rating: 4.6, sweet: 3.0, nicotine: 0.2, freshness: 3.2, flavours: [Fruits.mango]),
        Liquid(make: "Berry Medley", name: "assorted berries", image: "ragnarok", rating: 4.5, sweet: 2.8, nicotine: 0.2, freshness: 3.3, flavours: [Fruits.blueberry, Fruits.strawberry, Fruits.blueberry]),
        Liquid(make: "Choco Hazelnut", name: "chocolate hazelnut", image: "ragnarok", rating: 4.8, sweet: 2.6, nicotine: 0.3, freshness: 3.1, flavours: [Gourmands.chocolate, Gourmands.cereal])
    ]
}
