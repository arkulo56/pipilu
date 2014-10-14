//
//  flowViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-10-10.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class flowViewController: UIViewController {
    //装修阶段view层编号0
    @IBOutlet weak var view0: UIView!
    //装修阶段view层编号1
    @IBOutlet weak var view1: UIView!
    //装修阶段view层编号2
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //色块切换pagecontroller
    @IBAction func flowViewChange(sender: UIPageControl) {
        var tag = sender.currentPage
        switch(tag)
        {
        case 0:
            self.view0.hidden=false
            self.view1.hidden=true
            self.view2.hidden=true
        case 1:
            self.view0.hidden=true
            self.view1.hidden=false
            self.view2.hidden=true
        case 2:
            self.view0.hidden=true
            self.view1.hidden=true
            self.view2.hidden=false
        default:
            println("error")
        }
    }
    
    @IBAction func openFlow(sender: UIBarButtonItem) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
