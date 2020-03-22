//
//  LogIn3rdViewController.swift
//  MyWeChat
//
//  Created by thomas on 2020/3/22.
//  Copyright © 2020 thomas. All rights reserved.
//

import UIKit

class LogIn3rdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.title = "第三方登录"
        
        
    }

    @IBAction func chooseWay(_ sender: Any) {
        let alert = UIAlertController(title: "第三方登录", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "QQ登录", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "手机号登录", style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
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
