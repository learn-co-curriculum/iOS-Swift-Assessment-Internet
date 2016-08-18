//
//  InternetViewController.swift
//  iOS-Week8-Swift-Assessment
//
//  Created by Flatiron School on 7/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class InternetsViewController: UIViewController {

    @IBOutlet weak var weatherLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func updateWeatherTouched(sender: UIButton) {
        
    }
    
    func fetchWeather(){
        
        let urlString = "https://flatironAssessment.week8.com/weatherInfo"
   
    }
}
