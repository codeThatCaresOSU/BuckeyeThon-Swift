//
//  EventsTabViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/22/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class CustomTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBar.tintColor = colorMaster
        self.tabBar.barStyle = UIBarStyle.default
    }

}
