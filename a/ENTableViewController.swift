//
//  ENTableViewController.swift
//  a
//
//  Created by 张建强 on 14/12/23.
//  Copyright (c) 2014年 张建强. All rights reserved.
//

import UIKit

class ENTableViewController: UITableViewController {

    var listVidos:NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //创建bundle
        var ban = NSBundle.mainBundle()
        //读取plist文件路径
        let plistpath = ban.pathForResource("tgs", ofType: "plist")!
        //读取plist内容放到NSMutableArray内
        listVidos = NSMutableArray(contentsOfFile: plistpath)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //tableView 显示多少组
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    //tableView 每个组显示多少行数据
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listVidos.count
    }
    
    //每个cell的数据
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("进来了tableView")
        //名字和identifiler名字一样
        let cellIdentifier : String = "videoItem"
        //加载cell
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as ENTableViewCell
        //获取行
        var row = indexPath.row
        
        var rowDict : NSDictionary = listVidos.objectAtIndex(row) as NSDictionary
        
        cell.lab.text = rowDict.objectForKey("title") as? String
        
        return cell
    }
    
    //点击cell跳转
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "abc" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object : NSDictionary = listVidos[indexPath.row] as NSDictionary
                (segue.destinationViewController as ENViewController).detailItem = object
            }
        }
    }
 
    
}
