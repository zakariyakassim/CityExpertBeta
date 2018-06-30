//
//  DataHandle.swift
//  CityExpertBeta
//
//  Created by zakariya mohamed on 25/03/2018.
//  Copyright © 2018 zakariya mohamed. All rights reserved.
//

import UIKit
import SwiftyJSON


/*func getNearestStopsFromURL(_ baseURL : String){
    
    print(baseURL)
    
    let url = URL(string:baseURL)
    let request = URLRequest(url:url!)
    let session = URLSession(configuration: URLSessionConfiguration.default)
    let task = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
        
        if error == nil {
            
            
            do {
                let swiftyJSON = try JSON(data: data!)
                let arrivals = swiftyJSON["stops"].arrayValue
                
                for arrival in arrivals {
                    
                    let name = arrival["name"].stringValue
                    let distance = arrival["distance"].stringValue
                    let atcocode = arrival["atcocode"].stringValue
                    let latitude = arrival["latitude"].stringValue
                    let longitude = arrival["longitude"].stringValue
                    
                    
                    self.nearbyStops.append(NearbyStop(name: name, distance: distance, atcocode: atcocode, latitude: latitude, longitude:  longitude ))
                    
                    
                }
                
            } catch {
                
            }
            
        } else {
            
            print("There was an error")
        }
    })
    
    task.resume()
}


func getTimes(_ baseURL : String){
 
    
    let url = URL(string:baseURL)
    let request = URLRequest(url:url!)
    let session = URLSession(configuration: URLSessionConfiguration.default)
    let task = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
        
        if error == nil {
            
            do {
            let swiftyJSON = try JSON(data: data!)
            
            for (_, bus) in swiftyJSON["departures"] {
                for (_, arrivals) in bus {
                    
                    let line_name = arrivals["line_name"].stringValue
                    let direction = arrivals["direction"].stringValue
                    let best_departure_estimate = arrivals["best_departure_estimate"].stringValue
                    let estimatedWait = String(getMinutesDifference(best_departure_estimate))
                    
                    if self.directions.contains(direction){
                        
                    }else{
                        self.directions.append(direction)
                    }
                    
                } catch {
                    
                }
                    
         
                    
                    self.times.append(Times(line_name: line_name, estimatedWait: estimatedWait!))
                    
                }
            }
            
            DispatchQueue.main.async {
                
                self.times.sort(by: { Int($1.estimatedWait) > Int($0.estimatedWait) })
                
                var totalTowards = ""
                /*   for d in self.directions {
                 
                 totalTowards = totalTowards + " " + d
                 } */
                
                if (self.directions.count == 1){
                    totalTowards = self.directions[0]
                }
                
                if (self.directions.count > 1){
                    totalTowards = self.directions[0] + ",  " + self.directions[1]+"..."
                }
                
                if(self.directions.count == 0){
                    
                    self.towards.setTitle("No departures at this time.", for: UIControlState())
                    
                } else {
                    
                    self.towards.setTitle("Towards: "+totalTowards, for: UIControlState())
                }
                
                //   self.towards.setTitle(self.direction, forState: .Normal)
                
                self.collectionView.reloadData()
                
                
                
            }
            
        } else {
            print("There was an error")
        }
    })
    
    task.resume()
    
}



func ConvertMetersToMiles(_ meters : Double) -> Double{
    return (meters / 1609.344);
}

*/
