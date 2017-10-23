//
//  AddBirdViewController.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/23/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import UIKit
import CoreLocation
class AddBirdViewController: UIViewController {

    var county:County!
    @IBOutlet weak var addBName: UITextField!
    @IBOutlet weak var addLName: UITextField!
    @IBOutlet weak var addLat: UITextField!
    @IBOutlet weak var addLong: UITextField!
    
    
    @IBAction func cancelAddingBirds(_ sender: Any) {
       self.dismiss(animated: true, completion: nil)
   }
    
    @IBAction func addBird(_ sender: Any) {
        
        let date = Date().description        
        var countyIndex:Int = 0
        for i in 0..<State.counties.count{
            if (State.counties[i].name==county.name){
                countyIndex = i
                break
            }
        }
        
        let lat = Double(addLat.text!)
        let long = Double(addLong.text!)
        if lat != nil && long != nil {
            let newBird = Bird(name: addBName.text!, latinName: addLName.text!, location: CLLocationCoordinate2D(latitude: lat!, longitude: long!), dateFirstSighted: date, noOfSightings: 1, image: #imageLiteral(resourceName: "Song Sparrow"))
            State.counties[countyIndex].birds.append(newBird)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

