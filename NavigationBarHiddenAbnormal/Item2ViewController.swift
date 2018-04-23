//
//  Item2ViewController.swift
//  NavigationBarHiddenAbnormal
//
//  Created by 胡智林 on 2018/4/22.
//  Copyright © 2018年 胡智林. All rights reserved.
//

import UIKit
import FDFullscreenPopGesture
class Item2ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "item2"
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cellid")
        navigationController?.delegate = self
        view.backgroundColor = UIColor.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let itemNestVC = Item2NestViewController()
            itemNestVC.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(itemNestVC, animated: true)
            
            return
        }
        if indexPath.row == 1 {
            let loginVC = LoginViewController()
            navigationController?.present(loginVC, animated: true, completion: {
                
            })
            
            return
        }
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }

}
extension Item2ViewController: UINavigationControllerDelegate{
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let isSelf = viewController.isKind(of: Item2ViewController.classForCoder())
        navigationController.setNavigationBarHidden(isSelf, animated: animated)
        viewController.fd_prefersNavigationBarHidden = isSelf
    }
    
    
}
