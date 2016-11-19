//
//  File.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import Foundation

struct FundraisingOptions{
    var name : String!
    var description : String!
    var optionNumber : Int!
    
    init(name : String, description: String, optionNumber: Int) {
        self.name = name
        self.description = description
        self.optionNumber = optionNumber
    }
}

let fundraisingOptions = [
    FundraisingOptions(name: "Fundraising Resources", description: "Need some ideas for how to fundraise? Check out our resource center for ideas big to small to help you reach your goal!", optionNumber: 1),
    FundraisingOptions(name: "Miracle Makers", description: "Are you looking to do something above and beyond for Buckeyethon? Then check out the Miracle Maker initiative for powerful resources for your fundraising campaign!", optionNumber: 2),
    FundraisingOptions(name: "Miracle Milestones", description: "Here at Buckeyethon we like to reward our best fundraisers. Check out our milestone system to see what rewards you can earn through fundraising.", optionNumber: 3),
    FundraisingOptions(name: "Need Help Setting up An Event?", description: "Have a great idea but don't know how to do it? Don't worry, here at Buckeyethon we have a team on the ready to make your fundraising dream a reality.", optionNumber: 4)
]
