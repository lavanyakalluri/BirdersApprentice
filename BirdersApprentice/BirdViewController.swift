//
//  BirdViewController.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/16/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {

    var bird:Bird!
    
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var sightings: UITextField!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBAction func update(_ sender: Any) {
        bird.updateNumSightings(sightings:Int(sightings.text!)!)
        self.sightings.resignFirstResponder()
        viewDidLoad()       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = bird.name!
        location.text = "\(bird.location.latitude), \(bird.location.longitude)"
        
        date.text = "\(bird.dateFirstSighted)"
        sightings.text = "\(bird.noOfSightings!)"
        Image.image = bird.image!
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
