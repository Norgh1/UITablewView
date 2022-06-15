//
//  MainViewControllerTableViewController.swift
//  UITablewView
//
//  Created by Nor Gh's Mac mini on 6/15/22.
//  Copyright © 2022 Nor Gh's Mac mini. All rights reserved.
//

import UIKit

class MainViewControllerTableViewController: UITableViewController {

    let monitors = ["Asus","LG","Samsung","View Sonic","Songuan","Philips", "Acer", "Microsoft"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monitors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        cell.model?.text = monitors[indexPath.row]
        cell.myImageView?.image = UIImage(named: "image")
        cell.myImageView?.layer.cornerRadius = (((cell.myImageView.frame.size.height)) / 2)
        cell.myImageView?.clipsToBounds = true
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
 
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
