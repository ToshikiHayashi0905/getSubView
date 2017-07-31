//
//  UIView+getSubView.swift
//  getSubView
//
//  Created by 林 利樹 on 2017/07/31.
//  Copyright © 2017年 林 利樹. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func getSubView(checkClass : AnyClass) -> AnyObject? {
        
        //子のViewを取得
        for subView in self.subviews {
            //その子のViewが引数のクラスだったらそのオブジェクトを返す
            if type(of: subView) == checkClass {
                return subView
            } else {
                //違ったら再度下のViewを再起的にチェックし、見つかったらそのViewを返す
                if let view = subView.getSubView(checkClass : checkClass ) {
                    return view
                }
            }
        }
        
        return nil
    }
}
