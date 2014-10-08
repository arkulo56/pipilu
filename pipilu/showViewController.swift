//
//  showViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-10-7.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class showViewController: UIViewController {
    @IBOutlet weak var showImg: UIButton!
    //跳转至首页
    @IBOutlet weak var enter: UIButton!
    @IBAction func changeContent(sender: UIPageControl) {
        var a = sender.currentPage + 1
        showImg.setTitle("\(a)", forState: .Normal)
        if a==3
        {
            enter.hidden=false
        }
    }
    //跳转事件
    @IBAction func jumpRoot(sender: UIButton) {
        let myStoryboard = self.storyboard
        let target:UIViewController = myStoryboard?.instantiateViewControllerWithIdentifier("root") as UIViewController
        self.navigationController?.pushViewController(target, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
