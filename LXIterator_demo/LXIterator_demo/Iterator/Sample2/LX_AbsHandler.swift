//
//  LX_AbsHandler.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 抽象处理类
/*
 具有两个特点
 特点一：需要持有下一个处理节点对象的引用
 特点二：定义处理方法
 */
class LX_AbsHandler: NSObject {

    // 第一个特点
    var nextHandler : LX_AbsHandler?
    
    // 第二个特点
    // 参数：不是具体的请求对象，而是一个抽象的请求对象
    func handlerRequest(request:LX_AbsRequest) {
        
        if request.getRequestLevel() == getHandlerLevel() {
            //处理的级别 == 我请求的级别，说明这个请求是我需要处理的请求
            self.handler(request: request)
            
        } else {
            // 如果不满足要求，交给下一个处理节点（传递给下一个）
            self.nextHandler?.handler(request: request)
        }
        
    }
    
    
    func getHandlerLevel() -> Int {
        return 0;
    }
    
    func handler(request:LX_AbsRequest) {
        
    }
    
    
}
