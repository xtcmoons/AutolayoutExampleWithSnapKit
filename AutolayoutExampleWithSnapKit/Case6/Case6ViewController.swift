//
//  Case6ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/7.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit

class Case6ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var images = [
            UIImage.init(named: "dog_small"),
            UIImage.init(named: "dog_middle"),
            UIImage.init(named: "dog_big"),
                      ]
        let item1 = Case6ItemView.init(imageName: images[0]!, text: "Auto layout is a system")
        let item2 = Case6ItemView.init(imageName: images[1]!, text: "Auto Layout is a system that lets you lay out")
        let item3 = Case6ItemView.init(imageName: images[2]!, text: "Auto Layout is a system that lets you lay out your app’s user interface")
        self.view.addSubview(item1)
        self.view.addSubview(item2)
        self.view.addSubview(item3)

        item1.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(8)
            make.top.equalTo(self.view).offset(200)
        }
        item2.snp.makeConstraints { (make) in
            make.left.equalTo(item1.snp.right).offset(10)
            make.lastBaseline.equalTo(item1.snp.firstBaseline)
        }
        item3.snp.makeConstraints { (make) in
            make.left.equalTo(item2.snp.right).offset(10)
            make.lastBaseline.equalTo(item1.snp.lastBaseline)
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
