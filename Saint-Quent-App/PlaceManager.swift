//
//  PlaceManager.swift
//  Saint-Quent-App
//
//  Created by Jérémy on 23/01/2017.
//  Copyright © 2017 Jérémy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class PlaceManager {
    
    let dataUrl = "https://www.kopa.ovh/insset2017/saintquentin.json"
    var places = [Place]()
    var place:Place = Place()
    
    
    func getAllPlaces(){
        
        Alamofire.request(dataUrl).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("Validation Successful")
                let json = JSON(value)
                
                for item in json.array! {
                    let place = Place.placeFromJSONData(jsonData: item)
                    self.places.append(place)
                    print(place.libelle)
                }
                
            case .failure(let error):
                print(error)
            }
            
            
        }
    }

}
