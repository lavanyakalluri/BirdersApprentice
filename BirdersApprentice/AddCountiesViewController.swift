//
//  AddCountiesViewController.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/23/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import UIKit

class AddCountiesViewController: UIViewController {

    @IBOutlet weak var CountyName: UITextField!
    
    @IBAction func cancelAddingCounties(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addCounty(_ sender: Any) {
        let countyToAdd = County(name: CountyName.text!)
        State.counties.append(countyToAdd)
       
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
