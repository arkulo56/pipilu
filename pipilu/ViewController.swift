//
//  ViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-9-24.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate {
    @IBOutlet weak var myTabBar: UITabBar!

    @IBOutlet weak var meItem: UITabBarItem!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTabBar.delegate = self
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!) {
        println(item.tag)
        var nextView = loginViewController()
        self.presentViewController(nextView, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

