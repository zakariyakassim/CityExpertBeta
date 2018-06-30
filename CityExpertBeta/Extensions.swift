//
//  Extensions.swift
//  Booking
//
//  Created by zakariya mohamed on 04/04/2018.
//

import UIKit
import SnapKit


extension UIView {
    
    func createView(view: @escaping (UIView) -> Void){
        
        view(self)

    }
    
    func createView(addToView : UIView, view: @escaping (UIView) -> Void){
        addToView.addSubview(self)
        view(self)
    }

    func addToView(view : UIView){
        view.addSubview(self)
    }
    
    
    enum ViewSide {
        case Left, Right, Top, Bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        switch side {
        case .Left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height); break
        case .Right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height); break
        case .Top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness); break
        case .Bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness); break
        }
        
        layer.addSublayer(border)
    }
    
    
}

extension UINavigationBar {
    
    
    func createNavigationBar(navigationBar: @escaping (UINavigationBar) -> Void){
        
        navigationBar(self)
        
    }
    
}

extension UIButton {
    
    convenience init(title : String, selector : Selector, button: @escaping (UIButton) -> Void) {
        
        self.init()
        self.setTitle(title, for: UIControlState.normal)
        self.addTarget(self, action: selector, for: .touchUpInside)
        button(self)
    }
    convenience init(selector : Selector, button: @escaping (UIButton) -> Void) {
        
        self.init()
        self.addTarget(self, action: selector, for: .touchUpInside)
        button(self)
    }
    convenience init(button: @escaping (UIButton) -> Void)  {
        
        self.init()
        button(self)
    }
    
    
    func createButton(addToView : UIView, button: @escaping (UIButton) -> Void) {

        button(self)
       
    }

    
    func createButton(button: @escaping (UIButton) -> Void) {

        
        button(self)
       

    }

}


extension UIImageView {

    convenience init(image : UIImage, imageView: @escaping (UIImageView) -> Void) {
        
        self.init()
        
        self.image = image
        imageView(self)
    }
    convenience init(imageView: @escaping (UIImageView) -> Void) {
        
        self.init()
        imageView(self)
    }
    
    func createImageView(imageView: @escaping (UIImageView) -> Void){
        imageView(self)
    }
    func createImageView(addToView : UIView, imageView: @escaping (UIImageView) -> Void){
        imageView(self)
    }
    
}



 extension UILabel {
    
    
    convenience init(text : String, label: @escaping (UILabel) -> Void) {
        
        self.init()
        self.text = text
        label(self)
    }
    convenience init(label: @escaping (UILabel) -> Void) {
        
        self.init()
        label(self)
    }
    
    func createLabel(label: @escaping (UILabel) -> Void){
        
        self.text = "New Label"
        label(self)
    }
    func createLabel(addToView : UIView, label: @escaping (UILabel) -> Void){
        
        self.text = "New Label"
        self.addToView(view: self)
        label(self)
    }
    
    func underlined(lineWidth : CGFloat, color : UIColor){
        let border = CALayer()
        let width = lineWidth
        border.borderColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    

    
} 



extension UIScrollView {
    
    func createScrollView(scrollView: @escaping (UIScrollView) -> Void){
        scrollView(self)
    }
    func createScrollView(addToView : UIView, scrollView: @escaping (UIScrollView) -> Void){
        scrollView(self)
    }
    func createScrollView(addToView : UIView, delegate : UIScrollViewDelegate, scrollView: @escaping (UIScrollView) -> Void){
        addToView.addSubview(self)
        self.delegate = delegate
        scrollView(self)
    }

    func createScrollView(delegate : UIScrollViewDelegate, scrollView: @escaping (UIScrollView) -> Void){
        self.delegate = delegate
        scrollView(self)
    }
    
}

extension UIImagePickerController {
    
    func createImagePickerController(delegate : UIImagePickerControllerDelegate&UINavigationControllerDelegate, imagePickerController: @escaping (UIImagePickerController) -> Void){
        
        self.delegate = delegate

        
        imagePickerController(self)
    }
    
}


extension UITableView {
    
    func createTableView(delegate : UITableViewDelegate, dataSource : UITableViewDataSource, tableView: @escaping (UITableView) -> Void){
        
        self.delegate = delegate
        self.dataSource = dataSource
        
        tableView(self)
    }
    func createTableView(tableView: @escaping (UITableView) -> Void){

        tableView(self)
    }
    
    func createTableView(addToView : UIView, tableView: @escaping (UITableView) -> Void){
        addToView.addSubview(self)
        tableView(self)
    }
    
    func createTableView(addToView : UIView, delegate : UITableViewDelegate, dataSource : UITableViewDataSource, tableView: @escaping (UITableView) -> Void){
        
        addToView.addSubview(self)
        self.delegate = delegate
        self.dataSource = dataSource
        
        tableView(self)
    }
    
}


extension UICollectionView {
    
    func createCollectionView(delegate : UICollectionViewDelegate, dataSource : UICollectionViewDataSource, collectionView: @escaping (UICollectionView) -> Void){
        
        self.delegate = delegate
        self.dataSource = dataSource
        
        collectionView(self)
    }
    func createCollectionView(addToView : UIView, delegate : UICollectionViewDelegate, dataSource : UICollectionViewDataSource, collectionView: @escaping (UICollectionView) -> Void){
        
        addToView.addSubview(self)
        self.delegate = delegate
        self.dataSource = dataSource
        
        collectionView(self)
    }
    func createCollectionView(collectionView: @escaping (UICollectionView) -> Void){

        
        collectionView(self)
    }
    func createCollectionView(addToView : UIView, collectionView: @escaping (UICollectionView) -> Void){

        
        collectionView(self)
    }

    
}

extension UIColor {
    struct custom {
        
        static let darkOrange = UIColor("#EF6D56")
        static let lightOrange = UIColor("#EA8270")
        static let gray = UIColor("#A9A9A9")
        static let tungsten = UIColor("#424242")
        static let Mercury = UIColor("#EBEBEB")
    }
}






