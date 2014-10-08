//
//  detailContent.swift
//  pipilu
//
//  Created by 赵勇 on 14-9-24.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import Foundation
import UIKit

class detailContent: UIViewController,UITableViewDataSource,UITableViewDelegate{
    //标示符，确定当前显示的view是第几个
    var signView = 0
    //表格属性
    @IBOutlet weak var newTableView: UITableView!
    //准备好的表格数组，暂时为空
    var items = [dataItem]()
    //第一个独立view层
    @IBOutlet weak var viewOne: UIView!
    //第二个独立view层
    @IBOutlet weak var viewTwo: UIView!
    //第三个独立view层
    @IBOutlet weak var viewThree: UIView!
    
    //选择器控制
    @IBAction func onClickBar(sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex)
        {
        case 0:
            //println("000")
            viewOne.hidden = false
            viewTwo.hidden = true
            viewThree.hidden = true
            self.signView = 0
        case 1:
            //println("111")
            initData()
            self.newTableView.reloadData()
            viewOne.hidden = true
            viewTwo.hidden = false
            viewThree.hidden = true
            self.signView=1
        case 2:
            //println("222")
            initData1()
            self.newTableView.reloadData()
            viewOne.hidden = true
            viewTwo.hidden = false
            viewThree.hidden = true
            self.signView=2
        default:
            println("error")
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newTableView.dataSource = self
        self.newTableView.delegate = self
        self.viewOne.hidden = false
        
        //initData()

    }
    
    func initData(){
        self.items.removeAll(keepCapacity: true)
        let a1 = dataItem()
        a1.name = "师傅"
        a1.image = "head.jpg"
        a1.subtitle = "one level"
        self.items.append(a1)
        
        let a2 = dataItem()
        a2.name = "大师兄"
        a2.image = "touxiang.jpg"
        a2.subtitle = "two level"
        self.items.append(a2)
        
        let a3 = dataItem()
        a3.name = "八戒"
        a3.image = "touxiang.jpg"
        a3.subtitle = "two level"
        self.items.append(a3)
        
        let a4 = dataItem()
        a4.name = "沙和尚"
        a4.image = "head.jpg"
        a4.subtitle = "three level"
        self.items.append(a4)
        
        let a5 = dataItem()
        a5.name = "白龙马"
        a5.image = "head.jpg"
        a5.subtitle = "three level"
        self.items.append(a5)
    }

    func initData1(){
        self.items.removeAll(keepCapacity: true)
        let a1 = dataItem()
        a1.name = "贾宝玉"
        a1.image = "touxiang.jpg"
        a1.subtitle = "one level"
        self.items.append(a1)
        
        let a2 = dataItem()
        a2.name = "林黛玉"
        a2.image = "touxiang.jpg"
        a2.subtitle = "two level"
        self.items.append(a2)
        
        let a3 = dataItem()
        a3.name = "凤姐"
        a3.image = "head.jpg"
        a3.subtitle = "two level"
        self.items.append(a3)
        
        let a4 = dataItem()
        a4.name = "刘姥姥"
        a4.image = "head.jpg"
        a4.subtitle = "three level"
        self.items.append(a4)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //满足表格协议相关函数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        var row=indexPath.row as Int
        
        //println(self.items[row].name)
        cell.textLabel?.text=self.items[row].name
        cell.imageView?.image = UIImage(named:self.items[row].image)
        cell.detailTextLabel?.text = self.items[row].subtitle
        return cell;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        viewOne.hidden=true
        viewTwo.hidden=true
        viewThree.hidden=false
    }
    
    
    

}
