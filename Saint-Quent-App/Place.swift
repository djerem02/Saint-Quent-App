//
//  Place.swift
//  Saint-Quent-App
//
//  Created by Jérémy on 23/01/2017.
//  Copyright © 2017 Jérémy. All rights reserved.
//

import UIKit
import SwiftyJSON

class Place {
    
    var libelle:String!
    var X:Float!
    var Y:Float!
    
    init() {
    }
    
    init(libelle:String) {
        self.libelle = libelle
    }
    
    
    static func placeFromJSONData(jsonData:JSON)->Place{
        let libelle = jsonData["libelle"].stringValue
   
        
        return Place(libelle:libelle)
        
    }
}
