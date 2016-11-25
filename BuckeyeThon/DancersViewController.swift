//
//  DancersViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/23/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit

class DancersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    struct TextViewProps {
        var text: String!
        var textColor: UIColor!
        var textSize: Int!
        init(text: String, textColor: UIColor, textSize: Int) {
            self.text = text
            self.textColor = textColor
            self.textSize = textSize
        }
    }
    
    func produceTextView(withX XC: Int, withY YC: Int, withWidth stretch: Int, withHeight length: Int, withProps props: TextViewProps) -> UITextView {
        
        let textView = UITextView()
        textView.frame = CGRect(x: XC, y: YC, width: stretch, height: length)
        
        textView.textColor = props.textColor
        textView.text = props.text
        
        return textView
    }
    
    struct UIVIewProps {
        var subViews: [UIView]
        init(subViews: [UIView]) {
            self.subViews = subViews
        }
    }
    
    func produceUIView(withX XC: Int, withY YC: Int, withWidth stretch: Int, withHeight length: Int, withProps props: UIVIewProps) -> UIView {
        
        let view = UIView()
        view.frame = CGRect(x: XC, y: YC, width: stretch, height: length)
        
        for view in props.subViews {
            view.addSubview(view)
        }
        
        return view
    }
    
}
