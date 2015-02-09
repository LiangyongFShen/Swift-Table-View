//
//  UITVController.swift
//  a
//
//  Created by 张建强 on 14/12/30.
//  Copyright (c) 2014年 张建强. All rights reserved.
//

import UIKit

class UITVController: UITableViewController {

    //入口
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    //内存警告的时候
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //tableveiw 有多少分组
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    //每个分组有多少行
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }


}
