//
//  ViewController.swift
//  Carousel
//
//  Created by Hou's Mac on 16/2/16.
//  Copyright © 2016年 霍伟元. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TopViewDelegate,TopViewDataSource {
    
    lazy var topView: TopView! = {
        let topView = TopView(frame: CGRectMake(0,0,self.view.bounds.width,150))
        topView.run = true
        topView.myDataSource = self
        topView.myDelegate = self
        return topView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.topView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func topView(topView: TopView, touched index: Int) {
        print("touched \(index)")
    }
    
    func topView(topView: TopView, viewIndex: Int) -> UIView {
        let view: UIView = UIView()
        let rValue = CGFloat(rand()%255);
        let gValue = CGFloat(rand()%255);
        let bValue = CGFloat(rand()%255);
        view.backgroundColor =  UIColor(red: rValue/255.0, green: gValue/255.0, blue: bValue/255.0, alpha: 1)
        return view
    }
    
    func numOfViews() -> Int {
        return 6
    }
    

}

