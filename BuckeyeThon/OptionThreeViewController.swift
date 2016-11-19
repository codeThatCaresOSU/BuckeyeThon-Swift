//
//  OptionThreeViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class OptionThreeViewController: UITableViewController {
    
    let reusableCell = "miracleMilestoneCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Miracle Milestone"

        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return miracleMilestoneData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell) as? MiracleMilestoneTableViewCell {
            
            cell.configureCell(miracle: miracleMilestoneData[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}
