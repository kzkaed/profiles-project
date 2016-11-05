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
    var currentProfile = "Katherine_Johnson"
    
    let profileNames: [String:String] =
        ["Katherine_Johnson": "Katherine Johnson",
         "Margaret_Hamilton": "Margaret Hamilton",
         "Grace_Hopper": "Grace Hopper",
         "Latanya_Sweeney": "Latanya Sweeney",
         "Barbara_Liskov": "Barbara Liskov",
         "Ellen_Ochoa": "Ellen Ochoa"]
    
    let profileUrls: [String:String] =
        ["Katherine_Johnson": "https://en.wikipedia.org/wiki/Katherine_Johnson",
         "Margaret_Hamilton": "https://en.wikipedia.org/wiki/Margaret_Hamilton_(scientist)",
         "Grace_Hopper": "https://en.wikipedia.org/wiki/Grace_Hopper",
         "Latanya_Sweeney": "https://en.wikipedia.org/wiki/Latanya_Sweeney",
         "Barbara_Liskov": "https://en.wikipedia.org/wiki/Barbara_Liskov",
         "Ellen_Ochoa": "https://en.wikipedia.org/wiki/Ellen_Ochoa"]
    
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
    
    @IBAction func nextProfile(_ sender: UIButton) {
       currentProfile = getNextProfile()
       let imageFileName = currentProfile + ".jpg"
       mainImage.image=UIImage(named: imageFileName)
       mainText.text=profileNames[currentProfile]
    }
  
    @IBAction func moreInfo(_ sender: UIButton) {
        let profileUrl = profileUrls[currentProfile]
        if let url = URL(string: profileUrl!) {
            UIApplication.shared.open(url, options: [:])
        }
    }
}

