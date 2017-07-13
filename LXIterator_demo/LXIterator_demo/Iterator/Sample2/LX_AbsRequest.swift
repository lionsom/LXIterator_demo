//
//  LX_AbsRequest.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 抽象的请求类
class LX_AbsRequest: NSObject {

    // 请求信息
    // 例如：请求参数、请求标题、、、、
    
    // private：绝对的私有化  
    // fileprivate: 文件内私有化
    private var obj:String?
    
    init(obj:String?) {
        super.init()
        
        self.obj = obj
    }
    
    // 请求的级别
    func getRequestLevel() -> Int {
        return 0
    }
    
    // 获得请求内容
    func getContent() -> String? {
        return self.obj
    }
    
    
}

