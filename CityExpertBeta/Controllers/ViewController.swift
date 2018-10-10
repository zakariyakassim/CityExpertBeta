//
//  ViewController.swift
//  CityExpertBeta
//
//  Created by zakariya mohamed on 24/03/2018.
//  Copyright © 2018 zakariya mohamed. All rights reserved.
//

import UIKit
import MapKit
import SnapKit

class ViewController: UIViewController, UIScrollViewDelegate{
    
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
        

      //  mapView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: mapViewHeight)
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        mapView.center = view.center
        
        view.addSubview(mapView)
        
        
        let scrollView = UIScrollView()
       //scrollView.layer.zPosition = 1;
      // scrollView.layer.backgroundColor = UIColor.white.cgColor
        
        scrollView.delegate = self
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        
        let contentView = UIView()
        contentView.layer.cornerRadius = 0
        contentView.layer.masksToBounds = true
       // scrollView.setContentOffset(CGPoint(x: 200, y: 200), animated: true)
        scrollView.contentInset = UIEdgeInsets(top: mapViewHeight, left: 0.0, bottom: 0.0, right: 0.0)
        contentView.backgroundColor = UIColor.skin.red

      //  contentView.addBorder(toSide: .Top, withColor: UIColor.black.cgColor, andThickness: 10)
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor("#000000").cgColor
        shapeLayer.lineWidth = 1
        let path = CGMutablePath()
        path.addLines(between: [CGPoint(x: 0, y: 50),CGPoint(x: self.view.frame.size.width, y: 50)])
        shapeLayer.path = path
        
        contentView.layer.addSublayer(shapeLayer)
        
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(view) // => IMPORTANT: this makes the width of the contentview static (= size of the screen), while the contentview will stretch vertically
        }
        let layer = CAShapeLayer()
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: 0, y: 10))
        linePath.addLine(to: CGPoint(x: self.view.frame.size.width, y: 10))
        linePath.lineWidth = 10
       
        layer.path = linePath.cgPath
        
       // layer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 160), cornerRadius: 50).cgPath
       // layer.fillColor = UIColor.red.cgColor
        contentView.layer.addSublayer(layer)
        
        
        
        let label1 = UILabel()
        label1.isHidden = true
        contentView.addSubview(label1)
        label1.numberOfLines = 0
        label1.text = "sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds"
        
        label1.snp.makeConstraints { (make) in
            make.left.right.equalTo(contentView).inset(20) // left/right padding 20pt
            make.top.equalTo(contentView).offset(20) // attached to the top of the contentview with padding 20pt
        }
        
        let label2 = UILabel()
         label2.isHidden = true
        contentView.addSubview(label2)
        label2.numberOfLines = 0
        label2.text = "sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds"
        
        label2.snp.makeConstraints { (make) in
            make.left.right.equalTo(contentView).inset(20) // left/right padding 20pt
            make.top.equalTo(label1.snp.bottom).offset(20) // below label1 with margin 20pt
            make.bottom.equalTo(contentView).offset(-20) // attached to the bottom of the contentview with padding 20pt
        }
        
        
        
        

    }
    
    
    @objc func buttonClicked(_ sender: AnyObject?) {
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NearestStopsViewController") as! NearestStopsViewController
        //  vc.userType = "customer"
        self.present(vc, animated: true, completion: nil)
        
        
    }

    
  /*  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
        
        cell.addSubview(self.btnBus);
    
        
   
        
       /* self.btnPlaces.createButton { button in
            
            
            button.layer.cornerRadius = 10
            button.imageEdgeInsets = UIEdgeInsets.init(top: 20,left: 20,bottom: 20,right: 20)
            button.setImage(Image.places, for: UIControl.State.normal)
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
        } */
        
        
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
        
    } */
    

    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = mapViewHeight - (scrollView.contentOffset.y + mapViewHeight)
         print("y = "+String(describing: y))
        
        // let height = min(max(y, 60), 400)
        let height = max(y, 80)
        
        //  let height = max(y, 0)
        
        // print("height = "+String(describing: height))
        mapView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height+20)
        
        //  profileImageY = profileImageY+y
        
        if(y>250) {
            
        }
    }


}

