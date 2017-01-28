//
//  ViewController.swift
//  CalculateInOne
//
//  Created by Jesus Franco on 1/27/17.
//  Copyright © 2017 Jesus Franco. All rights reserved.
//

import UIKit

struct Data{
    let cell : Int!
    let text : String!
    let image : UIImage!
}

class TableViewController: UITableViewController{
    
    var array = [Data]()
    
    override func viewDidLoad() {
        array = [Data(cell : 1, text : "Test", image : #imageLiteral(resourceName: "Screen Shot 2017-01-27 at 1.06.05 AM")),
                 Data(cell : 2, text : "Test1", image : #imageLiteral(resourceName: "Screen Shot 2017-01-27 at 1.06.05 AM")),
                 Data(cell : 1, text : "Test2", image : #imageLiteral(resourceName: "Screen Shot 2017-01-27 at 1.06.05 AM"))]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if array[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = array[indexPath.row].image
            cell.mainLabelView.text = array[indexPath.row].text
            
            return cell
        }
        else if array[indexPath.row].cell == 2{
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainImageView.image = array[indexPath.row].image
            cell.mainTableView.text = array[indexPath.row].text
            
            return cell
        }
        else {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = array[indexPath.row].image
            cell.mainLabelView.text = array[indexPath.row].text
            
            return cell
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if array[indexPath.row].cell == 1{
            return 218
        }
        else if array[indexPath.row].cell == 2{
            return 72
        }
        
        else {
            return 218
        }
        
    }

}

