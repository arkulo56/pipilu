//
//  acountViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-10-16.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class acountViewController: UIViewController {
    @IBOutlet weak var view1: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 20
        view1.layer.masksToBounds = 1
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
