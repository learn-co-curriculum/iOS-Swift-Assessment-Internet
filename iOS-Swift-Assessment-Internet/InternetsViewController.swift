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
    
    /* Perform a GET request on the URL below. This is the response you'll receive:
     {
     "name":"Flatiron School",
     "address":"11 Broadway, New York, NY 10004",
     "temperature": {
     "celsius":22,
     "fahrenheit":71
     }
     }
     */
    
    @IBAction func updateWeatherTouched(sender: UIButton) {
        
    }
    
    func fetchWeather(){
        
        // Use NSURLSession to write your GET request here
        let urlString = "https://flatironAssessment.week8.com/weatherInfo"
   
    }
}
