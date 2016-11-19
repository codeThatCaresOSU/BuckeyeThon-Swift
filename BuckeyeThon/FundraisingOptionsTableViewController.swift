//
//  FundraisingOptionsTableViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

enum FundraisingOptionSegues : String {
    case OptionOne = "optionOne"
    case OptionTwo = "optionTwo"
    case OptionThree = "optionThree"
    case OptionFour = "optionFour"
}

class FundraisingOptionsTableViewController: UITableViewController {
    
    let cellidentifier = "fundraisingOptionCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fundraising"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fundraisingOptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as? FundraisingOptionTableViewCell {
            
            cell.configureCell(option: fundraisingOptions[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let option = fundraisingOptions[indexPath.row]
        
        switch option.optionNumber{
        case 1:
            if let vc = storyboard?.instantiateViewController(withIdentifier: FundraisingOptionSegues.OptionOne.rawValue) as? OptionOneViewController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
            break
        case 2:
            if let vc = storyboard?.instantiateViewController(withIdentifier: FundraisingOptionSegues.OptionTwo.rawValue) as? OptionTwoViewController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
            break
        case 3:
            if let vc = storyboard?.instantiateViewController(withIdentifier: FundraisingOptionSegues.OptionThree.rawValue) as? OptionThreeViewController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
            break
        case 4:
            if let vc = storyboard?.instantiateViewController(withIdentifier: FundraisingOptionSegues.OptionFour.rawValue) as? OptionFourViewController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
            break
        default:
            fatalError()
            break
        }
    }
}
