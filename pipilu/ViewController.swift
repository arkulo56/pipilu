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
    //如果选择的是第三个按钮，则触发该函数
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

    @IBAction func goToFlow(sender: UIButton) {
        let ms = self.storyboard
        let flow:UIViewController = ms?.instantiateViewControllerWithIdentifier("flow") as UIViewController
        self.presentViewController(flow, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

