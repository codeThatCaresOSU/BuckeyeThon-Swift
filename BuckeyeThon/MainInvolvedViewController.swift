//
//  MainInvolvedViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/22/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class MainInvolvedViewController: UIViewController {
    
    /**
     *
     * Error needed to be fixed = Next View Controller does not show the window title.
     *
     **/

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Involved"
    }


    @IBAction func toDetailedInvolved(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toInvolvedDetailed", sender: sender.tag)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? CustomTabViewController {
            if let index = sender as? Int {
                controller.selectedIndex = index
            }
        }
    }
 
}
