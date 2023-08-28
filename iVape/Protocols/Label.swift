//
//  Labels.swift
//  iVape
//
//  Created by Samy Mehdid on 27/8/2023.
//

import SwiftUI

protocol Labell: Identifiable {
    var name: String { get }
    var color: Color { get }
    var price: Double { get }
}
