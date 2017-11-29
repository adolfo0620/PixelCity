//
//  Constants.swift
//  pixel-city
//
//  Created by adolfo reyes on 11/28/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import Foundation

func flickrURL(forApiKey key: String, withAnnotation annatation: DroppablePin, andNumberOfPhotos number: Int) -> String{
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annatation.coordinate.latitude)&lon=\(annatation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
