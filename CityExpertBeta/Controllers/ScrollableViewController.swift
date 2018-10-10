//
//  ScrollableViewController.swift
//  CityExpertBeta
//
//  Created by zakariya mohamed on 10/10/2018.
//  Copyright © 2018 zakariya mohamed. All rights reserved.
//

import UIKit
import SnapKit

class ScrollableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        
        let contentView = UIView()
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(view) // => IMPORTANT: this makes the width of the contentview static (= size of the screen), while the contentview will stretch vertically
        }
        
        let label1 = UILabel()
        contentView.addSubview(label1)
        label1.numberOfLines = 0
        label1.text = "sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds"
        
        label1.snp.makeConstraints { (make) in
            make.left.right.equalTo(contentView).inset(20) // left/right padding 20pt
            make.top.equalTo(contentView).offset(20) // attached to the top of the contentview with padding 20pt
        }
        
        let label2 = UILabel()
        contentView.addSubview(label2)
        label2.numberOfLines = 0
        label2.text = "sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds sdlkfj lksjdf lksjd flksdjf slkd jfdslkjf kldsjf lksdj fklsdjf lkdsjf lkjsdlk fjsdlkf jsdlkj flksdjflksdjf lksdj flkjsdlk fjsldkjf lkdjflksjdlksjf lkdsj flkdsjf lkds"
        
        label2.snp.makeConstraints { (make) in
            make.left.right.equalTo(contentView).inset(20) // left/right padding 20pt
            make.top.equalTo(label1.snp.bottom).offset(20) // below label1 with margin 20pt
            make.bottom.equalTo(contentView).offset(-20) // attached to the bottom of the contentview with padding 20pt
        }
    }
}
