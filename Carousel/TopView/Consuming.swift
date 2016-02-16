//
//  Consuming.swift
//  Profuse
//
//  Created by Hou's Mac on 16/1/21.
//  Copyright © 2016年 霍伟元. All rights reserved.
//

import Foundation
import UIKit
class Consuming: NSObject {
    /**
     轮播
     */
    class func carousel(topView: TopView, status: ()->Bool) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
            repeat{
                topView.nextPage()
                NSThread.sleepForTimeInterval(3)
            }while(status())
        }
    }
    
}