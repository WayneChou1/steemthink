//
//  STNavigationViewController.swift
//  SteemThink
//
//  Created by zhouzhiwei on 2018/2/26.
//  Copyright © 2018年 zijinph. All rights reserved.
//

import UIKit

class STNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initialize() -> Void {
        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.isTranslucent = true
        self.navigationBar.tintColor = kAppMainColor
        // 设置标题样式
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.black,
                                                  NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]
    }
    
}
