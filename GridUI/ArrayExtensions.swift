//
//  ArrayExtensions.swift
//  GridUI
//
//  Created by Alex Jeffers on 6/30/19.
//  Copyright © 2019 asapinc. All rights reserved.
//

import Foundation

    extension Array {
        
        func Chuncked(into size: Int) -> [[Element]] {
            
            return stride(from: 0, to: count, by: size).map {
                Array(self[$0..<Swift.min($0 + size, count)])
            }
            
        }
    }

