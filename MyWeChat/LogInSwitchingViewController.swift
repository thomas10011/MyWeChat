//
//  LogInSwitchingViewController.swift
//  MyWeChat
//
//  Created by thomas on 2020/3/21.
//  Copyright © 2020 thomas. All rights reserved.
//

import UIKit

class LogInSwitchingViewController: UINavigationController {
    
    var nameField:UITextField!
    var pwdField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationBar.isTranslucent = false
        //self.interactivePopGestureRecognizer?.isEnabled = true
        
        
        //导航栏的返回键
        let exitButton = UIBarButtonItem()
        //exitButton.style = UIBarButtonItem.Style.done
        exitButton.title = "返回"
        exitButton.tintColor = UIColor.black
        //exitButton.setBackButtonBackgroundImage(UIImage(systemName: "arrow.left"), for: UIControl.State.normal, barMetrics: UIBarMetrics.default)
        //exitButton.setBackgroundImage(UIImage(systemName: "xmark"), for: UIControl.State.normal, barMetrics: UIBarMetrics.default)
        
        
        
        //添加一个viewcontroller
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.white
        //vc1.title = "登录"
        //vc1.navigationItem.leftItemsSupplementBackButton = true
        vc1.navigationItem.leftBarButtonItem = exitButton
        self.pushViewController(vc1, animated: true)
        
        /*
        //测试view controller stack
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.blue
        vc2.title = "title2"
        self.pushViewController(vc2, animated: true)
        */
        
        let lablRect = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height*0.2)
        let lablView = UIView(frame: lablRect)
        let labl = UILabel(frame: lablView.bounds)
        lablView.addSubview(labl)
        labl.text = "用户登录"
        labl.textAlignment = NSTextAlignment.center
        labl.font = UIFont.systemFont(ofSize: 36)
        vc1.view.addSubview(lablView)
        debugPrint(labl)
        
        let rec1 = CGRect(x: 0, y: lablRect.height, width: lablRect.width*0.3, height: 30)
        let rec2 = CGRect(x: 0, y: lablRect.height + rec1.height+20, width: lablRect.width*0.3, height: 30)
        
        let labelName = UILabel(frame: rec1)
        labelName.text = "用户名"
        labelName.textAlignment = NSTextAlignment.center
        //debugPrint(labelName)
        let labelPwd = UILabel(frame: rec2)
        labelPwd.text = "密    码"
        labelPwd.textAlignment = NSTextAlignment.center
        //debugPrint(labelPwd)
        vc1.view.addSubview(labelName)
        vc1.view.addSubview(labelPwd)
        
        
        let rec3 = CGRect(x: labelName.frame.origin.x + labelName.bounds.width, y: labelName.frame.origin.y, width: self.view.bounds.width*0.5, height: labelName.bounds.height)
        let rec4 = CGRect(x: labelPwd.frame.origin.x + labelPwd.bounds.width, y: labelPwd.frame.origin.y, width: self.view.bounds.width*0.5, height: labelPwd.bounds.height)
        nameField = UITextField(frame: rec3)
        pwdField = UITextField(frame: rec4)
        
        //设置输入边框
        //nameField.layer.borderWidth = CGFloat(0.5)
        //nameField.layer.borderColor = UIColor.gray.cgColor
        //nameField.layer.cornerRadius = 5
        nameField.autocapitalizationType = .none
        
        
        nameField.borderStyle = .roundedRect
        
        nameField.returnKeyType = UIReturnKeyType.done
        nameField.leftViewMode = UITextField.ViewMode.always
        //nameField.leftView = UIView(frame: CGRect(x: 0,y: 0,width: 8,height: 0))
        nameField.placeholder = "User Name"
        //nameField.setValue(NSNumber(value: 20), forKey: "paddingLeft")    //第二种设置字符边距的办法
        
        //设置输入框的第二种方法
        pwdField.borderStyle = .roundedRect
        //pwdField.layer.borderWidth = CGFloat(0.5)
        //pwdField.layer.borderColor = UIColor.gray.cgColor
        pwdField.returnKeyType = UIReturnKeyType.done
        pwdField.leftViewMode = UITextField.ViewMode.always
        //pwdField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 0))
        pwdField.isSecureTextEntry = true
        pwdField.placeholder = "Password"
        
        vc1.view.addSubview(nameField)
        vc1.view.addSubview(pwdField)
        
        let Login3rd = UIButton(frame: CGRect(x: 35, y: labelPwd.frame.origin.y + labelPwd.bounds.height+20, width: 60, height: 20))
        Login3rd.setTitle("第三方登录", for: UIControl.State.normal)
        Login3rd.addTarget(self, action: #selector(login3rd), for: .touchUpInside)
        
        
        //Login3rd.isOpaque = true
        Login3rd.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        //Login3rd.backgroundColor = UIColor.gray
        Login3rd.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        //debugPrint(Login3rd.isUserInteractionEnabled)
        //Login3rd.showsTouchWhenHighlighted = true
        
        
        
        
        
        let loginButton = UIButton(frame: CGRect(x: 100, y: Login3rd.frame.origin.y+50, width: 200, height: 30))
        loginButton.setTitle("登录", for: .normal)
        loginButton.setTitleColor(UIColor.black, for: .normal)
        loginButton.titleLabel?.font = .systemFont(ofSize: 20)
        loginButton.backgroundColor = .systemGray6
        
        vc1.view.addSubview(loginButton)
        vc1.view.addSubview(Login3rd)
        
        loginButton.addTarget(self, action: #selector(loginEvent), for: .touchUpInside)
        
        //设置done收起键盘
        nameField.addTarget(self, action: #selector(endEdit), for: .editingDidEndOnExit)
        pwdField.addTarget(self, action: #selector(endEdit), for: .editingDidEndOnExit)
        
        
        exitButton.target = self
        exitButton.action = #selector(exit)
    }
    

    @objc func exit(){
        print("pressed")
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func login3rd(){
        let VC3rd = LogIn3rdViewController()
        self.pushViewController(VC3rd, animated: true)
        
    }
    
    @objc func endEdit(){
        nameField.resignFirstResponder()
        pwdField.resignFirstResponder()
    }
    @objc func loginEvent(){
        let usercode = nameField.text!
        let password = pwdField.text!
        
        if usercode == "thr" && password == "123"{
            
            let mainBoard = UIStoryboard(name: "Main", bundle: nil)
            let VCMain = mainBoard.instantiateViewController(identifier: "vcMain")
            UIApplication.shared.windows[0].rootViewController = VCMain
            
        }
        else{
            
            let alert = UIAlertController(title: "登录失败", message: "用户名或密码错误！", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "确定", style: .default, handler: {(_:UIAlertAction) in self.pwdField.text = ""}))
            present(alert, animated: true, completion: nil)
        }
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
