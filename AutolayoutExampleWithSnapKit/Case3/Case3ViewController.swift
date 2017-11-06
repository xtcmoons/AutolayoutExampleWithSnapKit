//
//  Case3ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/6.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit

class Case3ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewWidthConstraint: NSLayoutConstraint!

    var maxWidth: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.maxWidth = Float(self.containerViewWidthConstraint.constant)
        self.setupSubViews()
    }

    //Mark: Action
    @IBAction func modifyContainerViewWidth(_ sender: UISlider) {
        if sender.value > 0 {
            containerViewWidthConstraint.constant = CGFloat(sender.value * maxWidth)
        }
    }

    func setupSubViews() {
        let subView = UIView()
        subView.backgroundColor = UIColor.red
        containerView.addSubview(subView)
        subView.snp.makeConstraints { (make) in
            make.left.equalTo(containerView.snp.left)
            make.top.equalTo(containerView.snp.top)
            make.bottom.equalTo(containerView.snp.bottom)
            //宽度为父view的宽度的一半
            make.width.equalTo(containerView.snp.width).multipliedBy(0.5)
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
