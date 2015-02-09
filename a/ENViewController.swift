//
//  ENViewController.swift
//  a
//
//  Created by 张建强 on 14/12/23.
//  Copyright (c) 2014年 张建强. All rights reserved.
//

import UIKit

class ENViewController: UIViewController {
    //第二个界面
    @IBOutlet weak var lla: UILabel!
    
    
    var detailItem:NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
    func configureView() {
        if let detail : NSDictionary = self.detailItem {
            self.lla.text = detail.objectForKey("title") as? String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
