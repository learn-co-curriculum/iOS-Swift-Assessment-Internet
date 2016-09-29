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
    
    @IBAction func updateWeatherTouched(_ sender: UIButton) {
        
    }
    
    /* response from API:
    {  
        "temperature": {
            celsius = 22;
            fahrenheit = 71; 
        },
        "address": "11 Broadway, New York, NY 10004",
        "name": "Flatiron School"
    }
    */
 
    func fetchWeather(){
        
        let urlString = "https://flatironAssessment.week8.com/weatherInfo"

    }
}
