//
//  flowdetailViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-10-14.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class flowdetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var viewA: UIView!
    
    @IBOutlet weak var viewB: UIView!
    
    @IBOutlet weak var viewC: UIView!
    @IBOutlet weak var view0: UIView!
    //右侧导航实现
    var menuSign = 0
    @IBAction func menuAction(sender: UIBarButtonItem) {
        var c = self.view0.frame
        if(self.menuSign==0)
        {
            c.origin.x = -230
            UIView.animateWithDuration(0.7,delay:0,usingSpringWithDamping:0.5,initialSpringVelocity:1.0,options:UIViewAnimationOptions.AllowUserInteraction,animations:{
                self.view0.frame = c ;
                self.menuSign = 1
                },completion: { (finished: Bool) -> Void in
                    
            })
        }else
        {
            c.origin.x = 0
            UIView.animateWithDuration(0.7,delay:0,usingSpringWithDamping:0.5,initialSpringVelocity:1.0,options:UIViewAnimationOptions.AllowUserInteraction,animations:{
                self.view0.frame = c ;
                self.menuSign = 0
                },completion: { (finished: Bool) -> Void in
                    
            })
        }
    }
    //实现视图跳转返回
    @IBAction func returnAction(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    //page controller切换控制
    @IBAction func pageChange(sender: UIPageControl) {
        var tag = sender.currentPage
        switch(tag)
            {
        case 0:
            self.viewA.hidden=false
            self.viewB.hidden=true
            self.viewC.hidden=true
        case 1:
            self.viewA.hidden=true
            self.viewB.hidden=false
            self.viewC.hidden=true
        case 2:
            self.viewA.hidden=true
            self.viewB.hidden=true
            self.viewC.hidden=false
        default:
            println("error")
        }
    }
    //侧边导航数据表格
    @IBOutlet weak var newTableView: UITableView!
    var stageDict = ["前期","开工准备","开工","水电","泥瓦","木工","油漆","安装"]
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("hang", forIndexPath: indexPath) as UITableViewCell
        var row = indexPath.row as Int
        println(self.stageDict[row])
        cell.textLabel?.text = self.stageDict[row]
        cell.imageView?.image = UIImage(named: "fdf.png")
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newTableView.dataSource = self
        self.newTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return 1
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
