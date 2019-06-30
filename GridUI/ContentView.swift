//
//  ContentView.swift
//  GridUI
//
//  Created by Alex Jeffers on 6/26/19.
//  Copyright © 2019 asapinc. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let cars = CarInfo.all()
    //let car: CarInfo
    
    var body: some View {
        
        let groupedCars = cars.Chuncked(into: 2)
        
       return List {
           
            // Creating rows
        
            ForEach(0..<groupedCars.count) { index in
                
                HStack {
                    ForEach(groupedCars[index]) { car in
                          Image(car.imageUrl)
                           .resizable()
                           //.scaledToFit()
                           //gives each picture the same height and width
                            .frame(width: 190, height: 150)
                        
                    }
                  
                }
                
        
            }
        }
        
    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView(car: <#CarInfo#>car: <#CarInfo#>)
//    }
//}
//#endif
