//
//  LX_ConcreteHandler2.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/11.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 第二个处理类
class LX_ConcreteHandler2: LX_Handler {

    override func handerRequest(obj: String?) {
        if obj == "LX_ConcreteHandler2" {
            print("当前执行：LX_ConcreteHandler2")
        }else{
            // 条件不满足，传递给下一个（事件传递机制-》责任链模式）
            nextHandler?.handerRequest(obj: obj)
        }
    }


}
