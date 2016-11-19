//
//  FuncdraisingOptionTableViewCell.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class FundraisingOptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var opitonName: UILabel!
    @IBOutlet weak var optionDescription: UITextView!
    
    func configureCell(option: FundraisingOptions) {
        self.opitonName.text = option.name
        self.optionDescription.text = option.description
    }
}
