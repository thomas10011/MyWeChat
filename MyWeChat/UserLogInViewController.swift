//
//  UserLogInViewController.swift
//  MyWeChat
//
//  Created by thomas on 2020/3/18.
//  Copyright © 2020 thomas. All rights reserved.
//

import UIKit

class UserLogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func login(_ sender: UIButton) {
        
        //UIApplication.shared.windows[0].rootViewController = self
        //let loginVC = LoginViewController()
        let loginVC = LogInSwitchingViewController()
        loginVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen//设置全屏显示
        
        //切换根控制器
        //UIApplication.shared.windows[0].rootViewController = loginVC

        present(loginVC, animated: true, completion: nil)
         //使窗口显示出来，第一个参数时要显示的窗口，第二个参数是是否有动画，第三个参数是一个闭包
        
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
