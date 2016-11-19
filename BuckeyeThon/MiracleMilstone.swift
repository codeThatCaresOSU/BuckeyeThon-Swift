//
//  MiracleMilstone.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/18/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import Foundation
import UIKit

struct MiracleMilestone {
    var description: String!
    var imageName: String!
    
    init(dessciption: String, imageName : String) {
        self.description = dessciption
        self.imageName = imageName
    }
    
    var Image: UIImage {
        return UIImage(named: self.imageName)!
    }
}

let miracleMilestoneData = [

    MiracleMilestone(dessciption: "$250: Buckeye Boogier \n Entry into Raffle \n CMN Hospital Bracelets", imageName: ""),
    MiracleMilestone(dessciption: "$500: Hopeful Hero \n 1 additional entry into the Raffle (2 total entrees) \n Sweatbands \n FTK Window Sticker \n Koozies \n Recognition on a slide at the DM \n All offered at the Buckeye Boogier Level", imageName: ""),
    MiracleMilestone(dessciption: "$750: Devoted Dancer \n 1 additional entry into the Raffle (3 total entrees) \n Tumbler \n 1 Hour Block to Play with Service \nn Animals at the Dance Marathon \n All offered at the Buckeye Boogier and Hopeful Hero Levels", imageName: ""),
    MiracleMilestone(dessciption: "$1000: Miracle Maker \n 2 additional entrees into the Raffle (4 total entrees) \n Rave on the Stage During Rave Hour \n Special Event with the BuckeyeThon Kids during Dance Marathon \n \n \n Miracle Maker Club: \n Special DM T-Shirt \n Hospital Tour \n All offered at the Buckeye Boogier, Hopeful Hero, and Devoted Dancer Levels", imageName: ""),
    MiracleMilestone(dessciption: "$2,000:  Fearless Fighter \n 8 Total Entrees in the Raffle \n BuckeyeThon \n Blankets \n Invitation to Spring Cook Out \n Certificate from Nationwide Children's Hospital Officials \n VIP Viewing Area During Reveal \n All offered at the Buckeye Boogier, Hopeful Hero, Devoted Dance, and Miracle Maker Levels", imageName: ""),
    MiracleMilestone(dessciption: "Top 5 Fundraisers \n Name Recognition on Stage at Both Closings \n Hold up a sign at Reveal", imageName: ""),
    MiracleMilestone(dessciption: "Raffle: \n Raffle ticket for every $250 raised \n 5 Raffle winners will get free registration for BuckeyeThon's 2017 Dance Marathon \n GoPro Camera \n Event At Nationwide Children's Hospital", imageName: "")
    
]
