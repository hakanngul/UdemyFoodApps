//
//  Foods.swift
//  UdemyFoodApps
//
//  Created by Hakan Gül on 02/07/2023.
//

import Foundation


class Foods : Identifiable {
    // id int, name, price
    var id: Int?
    var name: String?
    var imagePath: String?
    var price: Decimal?
    
    init(){
        
    }
    
    init(id: Int, name: String, imagePath: String, price: Decimal) {
        self.id = id
        self.name = name
        self.imagePath = imagePath
        self.price = price
    }

}
