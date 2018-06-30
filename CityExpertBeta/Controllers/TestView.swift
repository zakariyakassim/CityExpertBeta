//
//  TestView.swift
//  CityExpertBeta
//
//  Created by zakariya mohamed on 24/06/2018.
//  Copyright © 2018 zakariya mohamed. All rights reserved.
//

import UIKit
import SnapKit

class TestView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redView             = UIView()      // 1. Create the view, customize background color and add to superview
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        redView.snp.makeConstraints { (make) in   // 2. Specify the constraints via SnapKit
            let multipler = 1.0/2.0  // 50%
            make.width.equalTo(self.view).multipliedBy(multipler)  // Make width equal to 50% of the superview
            make.height.equalTo(self.view).multipliedBy(multipler) // Make height equal to 50% of the superview
            make.top.equalTo(self.view)  // Constrain the red view to the upper left region
            make.left.equalTo(self.view)
        }
        
        let blueView             = UIView()     // 1. Create the view, customize the background color and add to superview
        blueView.backgroundColor = UIColor.blue
        self.view.addSubview(blueView)
        
        blueView.snp.makeConstraints { (make) in  // 2. Specify the constraints via SnapKit
            let multipler = 1.0/2.0 // 50% multipier
            make.width.equalTo(self.view).multipliedBy(multipler)  // Make width equal to 50% of the superview
            make.height.equalTo(self.view).multipliedBy(multipler) // Make height equal to 505 of the superview
            make.top.equalTo(self.view)  // constrain the blue view to the upper right
            make.right.equalTo(self.view)
        }
        
        let greenView             = UIView()        // Create the view, customize the background color and add to the superview
        greenView.backgroundColor = UIColor.green
        self.view.addSubview(greenView)
        
        greenView.snp.makeConstraints { (make) in
            let multipler = 1.0/2.0  // 50% multiplier
            make.width.equalTo(self.view).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(self.view).multipliedBy(multipler) // make height equal to 50% of the superview
            make.bottom.equalTo(self.view)  // constrain the green view to the bottom right of the superview
            make.right.equalTo(self.view)
        }
        
        let blackView             = UIView()   // Create the view, customize the backgroud color and add to the superview
        blackView.backgroundColor = UIColor.black
        self.view.addSubview(blackView)
        
        blackView.snp.makeConstraints { (make) in
            let multipler = 1.0/2.0    // 50% multiplier
            make.width.equalTo(self.view).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(self.view).multipliedBy(multipler) // make height equal to 50% of the superview
            make.bottom.equalTo(self.view)  // constrain the black view to the bottom left
            make.left.equalTo(self.view)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
