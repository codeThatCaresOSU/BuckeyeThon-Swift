//
//  RedBorderedView.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/17/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

@IBDesignable class RedBorderedView: UIView {
    
    override func awakeFromNib() {
        self.layer.borderColor = UIColor(displayP3Red: 187/255, green: 0, blue: 0, alpha: 1).cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 4.0
    }

}
