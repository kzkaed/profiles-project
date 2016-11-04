//
//  ViewController.swift
//  Profiles
//
//  Created by Kristin on 11/4/16.
//  Copyright © 2016 Kristin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentProfilePosition = 0
    
    let profiles = ["Katherine_Johnson",
                    "Margaret_Hamilton",
                    "Grace_Hopper",
                    "Latanya_Sweeney",
                    "Barbara_Liskov",
                    "Ellen_Ochoa"]

    
    func getNextProfile() -> String {
        currentProfilePosition = self.currentProfilePosition + 1
        if (currentProfilePosition == profiles.count) {
            self.currentProfilePosition = 0
        }
        return profiles[currentProfilePosition]
    }
    
    @IBOutlet weak var mainText: UITextView!

    @IBOutlet weak var mainImage: UIImageView!
    
    @IBAction func NexProfile(_ sender: UIButton) {
        let imageFileName = getNextProfile() + ".jpg"
        mainImage.image=UIImage(named: imageFileName)
        mainText.text=getNextProfile()
    
    
    }

}

