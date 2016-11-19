//
//  MiracleMilestoneTableViewCell.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/19/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class MiracleMilestoneTableViewCell: UITableViewCell {

    @IBOutlet weak var miracleImage: UIImageView!
    @IBOutlet weak var miracleDescription: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(miracle: MiracleMilestone) {
        miracleDescription.text = miracle.description
    }

}
