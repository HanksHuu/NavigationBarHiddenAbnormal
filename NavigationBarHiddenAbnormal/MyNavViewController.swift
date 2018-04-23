//
//  MyNavViewController.swift
//  NavigationBarHiddenAbnormal
//
//  Created by 胡智林 on 2018/4/22.
//  Copyright © 2018年 胡智林. All rights reserved.
//

import UIKit

class MyNavViewController: UINavigationController {
    override var isNavigationBarHidden: Bool{
        didSet{
            let VC = viewControllers.first
            print("\(type(of: self)).\(#function) = \(isNavigationBarHidden),oldValue = \(oldValue),  ,VC = \(VC?.classForCoder )")
        }
    }
    override func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
        super.setNavigationBarHidden(hidden, animated: animated)
        let VC = viewControllers.first
        
        print("\(type(of: self)).\(#function)   hidden = \(hidden) ,VC = \(VC?.classForCoder)")
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
