//
//  loginViewController.swift
//  pipilu
//
//  Created by 赵勇 on 14-10-7.
//  Copyright (c) 2014年 赵勇. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    //本地用户名数据
    var user = [userAmount]()
    
    //用户名
    @IBOutlet weak var userName: UITextField!
    //密码
    @IBOutlet weak var userPassword: UITextField!
    
    //登录函数
    @IBAction func loginAction(sender: UIButton) {
        var sign = 0
        if(userName.text.isEmpty && userPassword.text.isEmpty)
        {
            let alert = UIAlertView(title: "出错了", message: "您输入的账号或密码错误", delegate: self, cancelButtonTitle: "确定")
            alert.show()
        }else
        {//println(userName)
            for item in self.user
            {
                if(item.name == userName.text && item.password == userPassword.text)
                {
                    sign = 1
                    break
                }
            }
        }
        if sign==1
        {
            let al1 = UIAlertView(title: "成功", message: "登录成功", delegate: self, cancelButtonTitle: "确定")
            al1.show()
        }else
        {
            let al2 = UIAlertView(title: "出错了", message: "没有该账号或密码错误", delegate: self, cancelButtonTitle: "确定")
            al2.show()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initUser()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //初始化用户本地账户数据
    func initUser()
    {
        var u1 = userAmount()
        u1.name="arkulo"
        u1.password="123456"
        self.user.append(u1)
        var u2 = userAmount()
        u2.name="pipilu"
        u2.password="123456"
        self.user.append(u2)
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
