//
//  NearestStopsViewController.swift
//  CityExpertBeta
//
//  Created by zakariya mohamed on 28/06/2018.
//  Copyright © 2018 zakariya mohamed. All rights reserved.
//


import UIKit
import MapKit
import SnapKit

class NearestStopsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let mapViewHeight:CGFloat = screenHeight/2.5
    
    let mapView = MKMapView()
    
    let btnBus = UIButton(type: .system)
    let btnPlaces = UIButton(type: .system)
    let btnFavourite = UIButton(type: .system)
    let btnNotify = UIButton(type: .system)
    
    let topBanner = UIView()
    
    @IBOutlet var tableView: UITableView!
    
    let items = ["9:00 - 9:30","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00","9:30 - 10:00"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.contentInset = UIEdgeInsets.init(top: mapViewHeight, left: 0, bottom: 50, right: 0)
        self.tableView.backgroundColor = UIColor.skin.red
        self.tableView.separatorStyle = .none
        self.tableView.allowsSelection = false
        
        self.tableView.snp.makeConstraints { make in
            make.width.height.equalTo(self.view)
            make.center.equalTo(self.view)
        }
        
        
        mapView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: mapViewHeight)
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        
        mapView.center = view.center
        
        view.addSubview(mapView)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return screenHeight/1.7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        // if (self.isViewLoaded && (self.view.window != nil)) {
        cell.backgroundColor = UIColor.clear
        
        topBanner.createView { view in
            view.backgroundColor = UIColor.skin.light_red
            
            cell.addSubview(view)
            
            
        }
        
        let buttonsContainer = UIView()
        
        buttonsContainer.createView { view in
            
            
            view.backgroundColor = UIColor.clear
            
            cell.addSubview(view)
            
        }
        
        
        self.btnBus.createButton { button in
            
            button.layer.cornerRadius = 10
            button.imageEdgeInsets = UIEdgeInsets.init(top: 20,left: 20,bottom: 20,right: 20)
            button.setImage(Image.bus, for: UIControl.State.normal)
            button.imageView?.contentMode = .scaleAspectFill
            button.imageView?.clipsToBounds = true
            button.backgroundColor = UIColor.white
            button.tintColor = UIColor.black
            
            cell.addSubview(button)
            
        }
        
        
        self.btnFavourite.createButton { button in
            
            
            button.layer.cornerRadius = 10
            button.imageEdgeInsets = UIEdgeInsets.init(top: 20,left: 20,bottom: 20,right: 20)
            button.setImage(Image.favourites, for: UIControl.State.normal)
            button.imageView?.contentMode = .scaleAspectFill
            button.imageView?.clipsToBounds = true
            button.backgroundColor = UIColor.white
            button.tintColor = UIColor.black
            
            cell.addSubview(button)
            
            
            
            
        }
        
        self.btnPlaces.createButton { button in
            
            
            button.layer.cornerRadius = 10
            button.imageEdgeInsets = UIEdgeInsets.init(top: 20,left: 20,bottom: 20,right: 20)
            button.setImage(Image.places, for: UIControl.State.normal)
            button.imageView?.contentMode = .scaleAspectFill
            button.imageView?.clipsToBounds = true
            button.backgroundColor = UIColor.white
            button.tintColor = UIColor.black
            
            
            cell.addSubview(button)
            
            
            
            
        }
        
        self.btnNotify.createButton { button in
            
            
            button.layer.cornerRadius = 10
            button.imageEdgeInsets = UIEdgeInsets.init(top: 20,left: 20,bottom: 20,right: 20)
            button.setImage(Image.notify_me, for: UIControl.State.normal)
            button.imageView?.contentMode = .scaleAspectFill
            button.imageView?.clipsToBounds = true
            button.backgroundColor = UIColor.white
            button.tintColor = UIColor.black
            
            
            cell.addSubview(button)
            
            
            
            
        }
        
        
        topBanner.snp.makeConstraints { make in
            
            let multipler = 0.40/2.0  // 50% multiplier
            make.height.equalTo(buttonsContainer).multipliedBy(multipler)
            
            make.width.equalTo(cell)
            // make.height.equalTo(screenHeight/9.99)
            make.top.equalTo(cell)
            make.centerX.equalTo(cell)
            
        }
        
        buttonsContainer.snp.makeConstraints { make in
            
            make.width.equalTo(cell).inset(70)
            make.height.equalTo(cell).inset(80)
            make.center.equalTo(cell)
            
            // make.top.equalTo(topBanner.snp.bottom)
            
            
        }
        
        
        self.btnBus.snp.makeConstraints { (make) in
            let multipler = 0.98/2.0  // 50% multiplier
            make.width.equalTo(buttonsContainer).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(buttonsContainer).multipliedBy(multipler) // make height equal to 50% of the superview
            make.bottom.equalTo(buttonsContainer)  // constrain the green view to the bottom right of the superview
            make.right.equalTo(buttonsContainer)
        }
        
        self.btnFavourite.snp.makeConstraints { (make) in
            let multipler = 0.98/2.0  // 50% multiplier
            make.width.equalTo(buttonsContainer).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(buttonsContainer).multipliedBy(multipler) // make height equal to 50% of the superview
            make.top.equalTo(buttonsContainer)  // constrain the blue view to the upper right
            make.right.equalTo(buttonsContainer)
        }
        
        self.btnPlaces.snp.makeConstraints { (make) in
            let multipler = 0.98/2.0  // 50% multiplier
            make.width.equalTo(buttonsContainer).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(buttonsContainer).multipliedBy(multipler) // make height equal to 50% of the superview
            make.top.equalTo(buttonsContainer)  // Constrain the red view to the upper left region
            make.left.equalTo(buttonsContainer)
        }
        
        self.btnNotify.snp.makeConstraints { (make) in
            let multipler = 0.98/2.0  // 50% multiplier
            make.width.equalTo(buttonsContainer).multipliedBy(multipler)  // make width equal to 50% of the superview
            make.height.equalTo(buttonsContainer).multipliedBy(multipler) // make height equal to 50% of the superview
            make.bottom.equalTo(buttonsContainer)  // constrain the black view to the bottom left
            make.left.equalTo(buttonsContainer)
        }
        
        
        /* self.btnBus.snp.makeConstraints { make in
         
         // make.center.equalTo(cell)
         make.height.width.equalTo(120)
         make.left.equalTo(buttonsContainer)
         make.right.equalTo(btnFavourite.snp.left)
         // make.right.equalTo(self.btnFavourite.snp.left)
         make.width.equalTo(self.btnFavourite)
         make.top.equalTo(buttonsContainer)
         
         }
         
         self.btnFavourite.snp.makeConstraints { make in
         
         
         make.height.width.equalTo(btnBus)
         make.right.equalTo(buttonsContainer)
         make.left.equalTo(self.btnBus.snp.right).inset(10)
         make.width.equalTo(self.btnBus)
         make.top.equalTo(buttonsContainer)
         
         
         }
         
         
         self.btnPlaces.snp.makeConstraints { make in
         
         // make.center.equalTo(cell)
         make.height.width.equalTo(btnBus)
         make.left.equalTo(buttonsContainer)
         make.right.equalTo(btnFavourite.snp.left)
         // make.right.equalTo(self.btnFavourite.snp.left)
         make.width.equalTo(self.btnFavourite)
         make.top.equalTo(btnBus.snp.bottom)
         make.bottom.equalTo(buttonsContainer)
         
         }
         
         self.btnNotify.snp.makeConstraints { make in
         
         
         make.height.width.equalTo(btnBus)
         make.right.equalTo(buttonsContainer)
         make.left.equalTo(self.btnBus.snp.right)
         make.width.equalTo(self.btnBus)
         make.top.equalTo(btnFavourite.snp.bottom)
         make.bottom.equalTo(buttonsContainer)
         
         
         } */
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = mapViewHeight - (scrollView.contentOffset.y + mapViewHeight)
        // print("y = "+String(describing: y))
        
        // let height = min(max(y, 60), 400)
        let height = max(y, 80)
        
        //  let height = max(y, 0)
        
        // print("height = "+String(describing: height))
        mapView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
        
        //  profileImageY = profileImageY+y
        
        if(y>250) {
            
        }
    }
    
    
}

