//
//  Bird.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/16/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit


class Bird:Equatable,CustomStringConvertible{
    
    var name:String!
    var latinName:String!
    var location:CLLocationCoordinate2D!
    var dateFirstSighted:String
    var noOfSightings:Int!
    var image:UIImage!
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:String, noOfSightings:Int, image:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.noOfSightings = noOfSightings
        self.image = image
    }
    
    func updateNumSightings(sightings:Int){
        noOfSightings! += 1
    }
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        return ""
    }
    
}
class County{
    var name:String
    var birds:[Bird]
    
    init(name:String, birds:[Bird]){
        self.name = name
        self.birds = birds
    }
    
    init(name:String){
        self.name = name
        self.birds = []
    }
    
}



struct State{
    static var counties:[County] = [County(name: "Eastern", birds: [Bird(name: "Blue Jay", latinName: "Cyanocitta cristata", location: CLLocationCoordinate2D(latitude: 51.0,longitude: 181.2), dateFirstSighted: "2007-04-02 4:34:25", noOfSightings: 10, image: #imageLiteral(resourceName: "Blue Jay")), Bird(name: "House Finch", latinName: "Haemorhous mexicanus", location: CLLocationCoordinate2D(latitude: 43.78,longitude: 35.46), dateFirstSighted:"2005-02-15 12:23:35" , noOfSightings: 16, image: #imageLiteral(resourceName: "House Finch"))
        , Bird(name: "Song Sparrow", latinName: "Melospiza Melodia", location: CLLocationCoordinate2D(latitude: 66.15,longitude: 158.35), dateFirstSighted: "2005-06-02 02:34:56", noOfSightings: 267, image: #imageLiteral(resourceName: "Song Sparrow")) ]), County(name: "West Across Continent", birds: [ Bird(name: "Northern Flicker", latinName: "Colaptes auratus", location: CLLocationCoordinate2D(latitude: 145.35,longitude: 99.17), dateFirstSighted: "2010-01-25 08:45:45", noOfSightings: 133, image:#imageLiteral(resourceName: "Northern Flicker")) , Bird(name: "Evening Grosbeak", latinName: "Coccothraustes vespertinus", location: CLLocationCoordinate2D(latitude: 132.45,longitude:65.66), dateFirstSighted:"1999-09-22 08:4:43", noOfSightings: 202, image:#imageLiteral(resourceName: "Evening Grosbeak")), Bird(name: "Verdin", latinName: "Auriparus flaviceps", location: CLLocationCoordinate2D(latitude: 38.13,longitude: 153.46), dateFirstSighted: "1996-07-13 10:12:23", noOfSightings: 67, image: #imageLiteral(resourceName: "Verdin"))]), County(name: "Westren", birds: [Bird(name: "Bushtit", latinName: "Psaltriparus minimus", location: CLLocationCoordinate2D(latitude: 151.35,longitude: 88.55), dateFirstSighted: "1970-12-19 11:24:39", noOfSightings: 1636, image:#imageLiteral(resourceName: "Bushtit")) , Bird(name: "Varied Thrush", latinName: "Ixoreus naevius", location: CLLocationCoordinate2D(latitude: 152.356,longitude: 129.23), dateFirstSighted: "1977-07-30 01:30:48", noOfSightings: 13, image: #imageLiteral(resourceName: "Varied Thrush")), Bird(name: "Gila Woodpecker", latinName: "Melanerpes uropygialis", location: CLLocationCoordinate2D(latitude: 25.42,longitude: 34.56), dateFirstSighted: "1995-05-04 06:20:37", noOfSightings: 367, image: #imageLiteral(resourceName: "Gila Woodpecker"))])]
}
struct Row{
    static var ix:Int = 0
}
