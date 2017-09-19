//
//  ViewModel.swift
//  Test
//
//  Created by 小七 on 2017/9/19.
//  Copyright © 2017年 Seven. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    
    func loadCellWithModel(_ model: Model, view: MyTableViewCell) {
        view.label.text = model.name
    }
    
}
