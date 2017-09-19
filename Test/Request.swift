//
//  Request.swift
//  Test
//
//  Created by 小七 on 2017/9/19.
//  Copyright © 2017年 Seven. All rights reserved.
//

import UIKit

class Request: NSObject {
    
    var list: [Model] = [Model]()
    
    func request(result: () -> Void){
        for _ in  0 ... 20 {
            var m = Model()
            m.name = "12345"
            list.append(m)
        }
        result()
    }
    
}
