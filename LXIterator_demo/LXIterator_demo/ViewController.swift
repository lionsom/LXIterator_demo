//
//  ViewController.swift
//  LXIterator_demo
//
//  Created by linxiang on 2017/7/11.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 案例一：测试
        
//        let handler1 = LX_ConcreteHandler1()
//        let handler2 = LX_ConcreteHandler2()
//        handler1.nextHandler = handler2
//        
//        //执行handler1
//        handler1.handerRequest(obj: "LX_ConcreteHandler2")
//     
        
        // 案例二：测试
        
        let handler1 = LX_AbsConcreteHandler1();
        let handler2 = LX_AbsConcreteHandler2();
        let handler3 = LX_AbsConcreteHandler3();

        handler1.nextHandler = handler2
        handler2.nextHandler = handler3
        
        let request1 = LX_ConcreteRequest1(obj: "来呀快活呀")
        let request2 = LX_ConcreteRequest1(obj: "来呀快活呀@@@@@@@@")
        let request3 = LX_ConcreteRequest1(obj: "来呀快活呀333333333")
        
        handler1.handlerRequest(request: request2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

