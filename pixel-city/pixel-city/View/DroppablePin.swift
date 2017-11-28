//
//  DroppablePin.swift
//  pixel-city
//
//  Created by adolfo reyes on 11/28/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var indentifier: String
    
    init(coordinate: CLLocationCoordinate2D, indentifier: String){
        self.coordinate = coordinate
        self.indentifier = indentifier
        super.init()
    }
}
