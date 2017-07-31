//
//  ViewController.swift
//  getSubView
//
//  Created by 林 利樹 on 2017/07/31.
//  Copyright © 2017年 林 利樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        let checkView : tmpView = tmpView()
        
        view.addSubview(checkView)
        self.view.addSubview(view)
        
        let testView = self.view.getSubView(checkClass : tmpView.self)
        if let _ = testView {
            print("取得")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

