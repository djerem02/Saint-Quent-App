//
//  ViewController.swift
//  Saint-Quent-App
//
//  Created by Jérémy on 23/01/2017.
//  Copyright © 2017 Jérémy. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var placeManager : PlaceManager = PlaceManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrieveData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func retrieveData(){
        print("retrieve data")
        placeManager.getAllPlaces()
    }


}

