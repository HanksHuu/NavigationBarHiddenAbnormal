//
//  LoginViewController.swift
//  NavigationBarHiddenAbnormal
//
//  Created by 胡智林 on 2018/4/22.
//  Copyright © 2018年 胡智林. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .system)
        button.setTitle("点一下", for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        button.frame = .init(x: 100, y: 200, width: 80, height: 40)
        view.addSubview(button)
    }
    @objc private func buttonTap(){
        dismiss(animated: true) {
            
        }
        
        
    }
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
