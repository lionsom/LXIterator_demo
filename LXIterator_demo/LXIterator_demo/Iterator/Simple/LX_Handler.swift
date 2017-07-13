//
//  LX_Handler.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/11.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit


// 抽象处理类（概念、结构上的抽象）
// 父类
class LX_Handler: NSObject {

    var nextHandler:LX_Handler?
    
    func handerRequest(obj:String?) {
        print("抽象处理类\(obj!)")
    }
    
    
}
