//
//  WeatherAPIClient.swift
//  iOS-Swift-Assessment-Internet
//
//  Created by Dennis Vera on 8/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherAPIClient {
    
    class func getWeatherWithAlamofireCompletion(completionHandler: (NSDictionary) -> ()) {
        
        Alamofire.request(.GET, "https://swift-internet-week8.herokuapp.com/").responseJSON { response in
            //            print(response.request)  // original URL request
            //            print(response.response) // URL response
            //            print(response.data)     // server data
            //            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value as? NSDictionary {
                completionHandler(JSON)
            }
        }
    }
    
    class func getWeatherWithNSURLCompletion(completionHandler: (NSDictionary) -> ()) {
        
        let urlString = "https://swift-internet-week8.herokuapp.com/"
        
        let urlSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        if let urlRequest = NSURL(string: urlString) {
            let dataTask = urlSession.dataTaskWithURL(urlRequest) { (data, response, error) in
                
                if let data = data {
                    //                    print(data)
                    
                    do {
                        if let responseData = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSDictionary {
                            
                            //                            print(responseData)
                            
                            //                            NSOperationQueue.mainQueue().addOperationWithBlock {
                            
                            completionHandler(responseData)
                            //                            }
                        }
                    } catch {
                        
                        //                        print("return reponsedata failed!")
                    }
                }
            }
            
            dataTask.resume()
        }
    }
    
    
    
}