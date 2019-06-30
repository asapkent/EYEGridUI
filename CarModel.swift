//
//  CarModel.swift
//  GridUI
//
//  Created by Alex Jeffers on 6/29/19.
//  Copyright © 2019 asapinc. All rights reserved.
//

import Foundation
import SwiftUI

struct CarInfo: Identifiable {
    let id =  UUID() // in real app this would be web connection or database connection.
    let carType: String
    let price: Int
    let imageUrl: String
}

extension CarInfo {
    static func all() -> [CarInfo] {
        
        return [
            CarInfo(carType: "Audi S4", price: 50_000, imageUrl: "audi"),
            CarInfo(carType: "C63 AMG", price: 73_000, imageUrl: "c63"),
            CarInfo(carType: "Demon", price: 84_000, imageUrl: "demon"),
            CarInfo(carType: "GTR", price: 60_000, imageUrl: "gtr"),
            CarInfo(carType: "Z06", price: 75_000, imageUrl: "z06"),
            CarInfo(carType: "FRS", price: 60_000, imageUrl: "frs"),
            CarInfo(carType: "M5", price: 102_000, imageUrl: "m5"),
            CarInfo(carType: "Audi R8", price: 100_000, imageUrl: "r8")
        ]
        
    }
}
