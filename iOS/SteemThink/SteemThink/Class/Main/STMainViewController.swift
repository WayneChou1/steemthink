//
//  ViewController.swift
//  SteemThink
//
//  Created by zhouzhiwei on 2018/2/12.
//  Copyright © 2018年 zijinph. All rights reserved.
//

import UIKit

class STMainViewController: UITableViewController {
    
    lazy var dataSource:[STTrending] = {
        let source:[STTrending] = []
        return source
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadData() -> Void {
        let dict = ["tag":"life", "limit": "10"]
        let jsonStr = NSDictionary_STExtension.getJSONStringFromDictionary(dictionary: dict)
        let url = discussions_by_trending + "query=" + jsonStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        STClient.get(url: url, parameters: nil, to: self.view) { (response: Any?,error: Error?) in
            if response is NSArray{
                let arr3:NSArray = response as! NSArray
                for dict3:Dictionary in arr3 as! [Dictionary<String, Any>]{
                    // 遍历得到Model
                    let trending = STTrending.init(dict: dict3)
                    self.dataSource.append(trending)
                }
                 print("\(self.dataSource)")
            }
        }
    }

}

