//
//  ViewController.swift
//  Test
//
//  Created by 小七 on 2017/9/19.
//  Copyright © 2017年 Seven. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    lazy private var mViewModel: ViewModel = ViewModel()
    lazy private var mRequest: Request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mRequest.request {[weak self] in
            self?.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mRequest.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        mViewModel.loadCellWithModel(mRequest.list[indexPath.row], view: cell)
        return cell
    }
}


