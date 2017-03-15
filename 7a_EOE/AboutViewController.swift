//
//  AboutViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/20/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit

class AboutViewController: UITableViewController {

    var tableArray = [String]()
    var subTableArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableArray = ["Version","Developers"]
        
        subTableArray = ["1.0","Rohith Raju,Sagar Thakur"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = tableArray[indexPath.row]
        cell.detailTextLabel?.text = subTableArray[indexPath.row]

        // Configure the cell...
        
        return cell
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
