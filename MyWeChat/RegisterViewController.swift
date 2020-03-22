//
//  LoginViewController.swift
//  MyWeChat
//
//  Created by thomas on 2020/3/19.
//  Copyright © 2020 thomas. All rights reserved.
//

import UIKit

class RegisterViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //初始化一个视图
        
        /*let VC1 = UIViewController()
        //VC1.view.backgroundColor = UIColor.white
        VC1.title = "注册"
        
        
        //设置返回按钮
        let exitButton = UIBarButtonItem()
        exitButton.title = "返回"
        exitButton.tintColor = UIColor.black
        //设置导航栏左边按钮
        VC1.navigationItem.leftBarButtonItem = exitButton
        
        //f退出按钮和quit方法关联
        exitButton.action = #selector(quit)
        
        self.pushViewController(VC1, animated: true)

        //新建一个UIview，大小为返回的屏幕大小
        //let view1 = UIView(frame: screenRec)
        //view1.backgroundColor = UIColor.white//白色背景
        //view1.layer.cornerRadius = 0
        //view1.clipsToBounds = true
        
     
        //self.view.addSubview(view1)
        self.view.backgroundColor = UIColor.white;*/
    }
    
    /*@objc func quit(){
        self.dismiss(animated: true, completion: nil)
    }*/
    
    
    @IBAction func quit(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
