//
//  InternetViewController.swift
//  iOS-Week8-Swift-Assessment
//
//  Created by Flatiron School on 7/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class InternetsViewController: UIViewController {
    
    var fahrenheit: Int = 0
    var celsius: Int = 0
    
    @IBOutlet weak var weatherLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      fetchWeatherWithAlamofire()
        fetchWeatherWithNSURL()
        
    }
    
    func fetchWeatherWithAlamofire() {
        
        WeatherAPIClient.getWeatherWithAlamofireCompletion { (responseData) in
            
            if let celsiusKey = responseData["temperature"]?["celsius"] as? Int {
                self.celsius = celsiusKey
                
                print(celsiusKey)
            }
            
            if let fahrenheitKey = responseData["temperature"]?["fahrenheit"] as? Int {
                self.fahrenheit = fahrenheitKey
                
                print(fahrenheitKey)
            }
            
        }
        
    }
    
    func fetchWeatherWithNSURL() {
        
        WeatherAPIClient.getWeatherWithNSURLCompletion { (getTemp) in
            
            print(getTemp)
            
            guard let tempKey = getTemp["temperature"] else { return }
            guard let fTemp = tempKey["fahrenheit"] else { return }
            
            self.celsius = tempKey["celsius"] as! Int
            self.fahrenheit = fTemp as! Int
            
            
        }
        
    }
    
    @IBAction func updateWeatherTouched(sender: UIButton) {
        
        weatherLabel.text = "\(celsius)C / \(fahrenheit)F"
        
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
    
//    func fetchWeather(){
//        
//        let urlString = "https://flatironAssessment.week8.com/weatherInfo"
//        
//    }
}
