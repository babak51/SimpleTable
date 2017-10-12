//
//  ViewController.swift
//  SimpleTable
//
//  Created by Mohammad Amiraslani on 10/11/17.
//  Copyright © 2017 Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Home1", "Teakha", "Cafe Loisl", "Petite oyster",
                           "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
                           "Haigh's Chocolate", "Palomini Espresso", "Upstate", "Traif",
                           "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves",
                           "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak",
                           "CASK Pub and kitchen"]
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
        cell.imageView?.image = UIImage(named: "restaurant")
        return cell
    }
}

