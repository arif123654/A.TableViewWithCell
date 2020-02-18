//
//  ViewController.swift
//  A.TableViewWithCell
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- Utilities
    
    @IBOutlet weak var tableViewController: UITableView!
    var items = ["Burger", "Guiter","Shrimp"]
    var price = ["10$","250$","80$"]
    
    
    
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewController.delegate = self
        tableViewController.dataSource = self
        // Do any additional setup after loading the view.
    }


}

//MARK:- Table View
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewController.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.tableImageVIew.image = UIImage(named: items[indexPath.row])
        cell.tableNameLabel.text = items[indexPath.row]
        cell.tableQCLabel.text = price[indexPath.row]
        
        return cell
    }
    
    
}
