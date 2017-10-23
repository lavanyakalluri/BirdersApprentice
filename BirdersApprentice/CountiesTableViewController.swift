//
//  CountiesTableViewController.swift
//  BirdersApprentice
//
//  Created by Kalluri,Lavanya on 10/16/17.
//  Copyright © 2017 Kalluri,Lavanya. All rights reserved.
//

import UIKit

class CountiesTableViewController:  UITableViewController {

   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return State.counties.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countyCell", for: indexPath)
        cell.textLabel?.text = State.counties[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "countySegue"){
            let CTVC = segue.destination as! BirdsTableViewController
            CTVC.county = State.counties[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    override func viewWillAppear(_ animated:Bool){
        tableView.reloadData()
    }

}
