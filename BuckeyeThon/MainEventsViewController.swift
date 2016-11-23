//
//  MainEventsViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class MainEventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Events"
    }
    
    @IBAction func sendToSpecifiedTabEvent(_ sender: UIButton) {
    
        let selectedButton = sender.tag
        performSegue(withIdentifier: "toDetailedEvent", sender: selectedButton)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let controller = segue.destination as? CustomTabViewController {
            if let index = sender as? Int {
                controller.selectedIndex = index
            }
            
        }
    }
    
}
