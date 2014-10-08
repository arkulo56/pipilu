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
        if item.tag==2{
        var nextView = loginViewController()
        //self.presentViewController(nextView, animated: true, completion: nil)
        //self.navigationController?.pushViewController(nextView, animated: false)
        let myStoryBoard = self.storyboard
        let loginView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier("login") as UIViewController
        //self.presentViewController(loginView, animated: true, completion: nil)
        self.navigationController?.pushViewController(loginView, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

