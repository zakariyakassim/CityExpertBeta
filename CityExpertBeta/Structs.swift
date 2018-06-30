//
//  Course.swift
//  Coursework Management Tool
//
//  Created by MACBOOKPRO on 20/03/2016.
//  Copyright © 2016 MACBOOKPRO. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift

struct NearbyStop {
    
    var name : String
    var distance : String
    var atcocode : String
    var latitude : String
    var longitude : String
}

extension UIColor {
    struct skin {
        
        static let red = UIColor("#C00030")
        static let light_red = UIColor("#CB1F45")
        
    }
}


struct Image {
    
    static let bus = UIImage(named: "busButton")
    static let favourites = UIImage(named: "favouritesButton")
    static let places = UIImage(named: "placesButton")
    static let notify_me = UIImage(named: "notifyMeButton")
}
