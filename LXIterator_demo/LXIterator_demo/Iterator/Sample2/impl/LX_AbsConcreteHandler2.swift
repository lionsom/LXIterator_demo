//
//  LX_AbsConcreteHandler2.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

class LX_AbsConcreteHandler2: LX_AbsHandler {

    // 具体的处理的实现
    override func handler(request: LX_AbsRequest) {
        print("当前处理了：LX_AbsConcreteHandler2")
        print("处理的请求是：\(request.getContent()!)")
    }
    
}
