//
//  MapVC.swift
//  pixel-city
//
//  Created by adolfo reyes on 11/28/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBAction func centerMapBtnPresed(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
}

extension MapVC: MKMapViewDelegate{
    
}
