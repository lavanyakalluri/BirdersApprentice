//
//  ViewController.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/16/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {

    var county:County!
    override func viewDidLoad() {
        self.navigationItem.title = county.name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return county.birds.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birdCell", for: indexPath)
        cell.textLabel?.text = county.birds[indexPath.row].name
        cell.detailTextLabel?.text = county.birds[indexPath.row].latinName
        cell.imageView?.image = county.birds[indexPath.row].image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if (segue.identifier == "birdSegue"){
        let BTVC = segue.destination as! BirdViewController
        
        BTVC.bird = county.birds[(tableView.indexPathForSelectedRow?.row)!]
        }
        if (segue.identifier == "addBirdSegue"){
            let ABVC = segue.destination as! AddBirdViewController
            
            ABVC.county = county
        }
     
    }
    
    override func viewWillAppear(_ animated:Bool){
        tableView.reloadData()
    }
}


