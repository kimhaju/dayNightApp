//
//  ViewController.swift
//  dayNightApp
//
//  Created by haju on 2021/07/16.
//  Copyright © 2021 haju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dayImg = UIImage(named: "day.jpg")
    let nightImg = UIImage(named: "night.jpg")
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var stateSwitch: UISwitch!
    @IBOutlet weak var dayNightImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayNightImg.image = dayImg
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
   @objc func stateChanged(switchState: UISwitch) {
          if switchState.isOn {
              textLabel.text = "Day Mode"
            dayNightImg.image = dayImg
            textLabel.textColor = UIColor.white
           
          } else {
              textLabel.text = "Night Mode"
            dayNightImg.image = nightImg
            textLabel.textColor = UIColor.cyan
           
          }
      }
}

