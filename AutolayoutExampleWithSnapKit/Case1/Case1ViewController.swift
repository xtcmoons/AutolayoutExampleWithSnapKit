//
//  Case1ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/6.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit
import SnapKit

class Case1ViewController: UIViewController {

    @IBOutlet weak var containerView1: UIView!
    var label1: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initSubViews()
    }

    @IBAction func addLabelContent(_ sender: UIStepper) {

        switch sender.tag {
        case 0:
            label1.text = self.getLabelContentWithCount(count: Int(sender.value))
        case 1:
            label2.text = self.getLabelContentWithCount(count: Int(sender.value))
        default:
            print("default")
        }
    }

    func initSubViews() {
        label1 = UILabel()
        label1.backgroundColor = UIColor.yellow
        label1.text = "label1"
        label2 = UILabel()
        label2.backgroundColor = UIColor.green
        label2.text = "label2"

        containerView1.addSubview(label1)
        containerView1.addSubview(label2)

        label1.snp.makeConstraints { (make) in
            make.top.equalTo(containerView1.snp.top).offset(5)
            make.left.equalTo(containerView1.snp.left).offset(2)
            make.height.equalTo(40)
        }

        label2.snp.makeConstraints { (make) in
            make.top.equalTo(containerView1.snp.top).offset(5)
            make.left.equalTo(label1.snp.right).offset(2)
            make.right.lessThanOrEqualTo(containerView1)
            make.height.equalTo(40)
        }

        label1.setContentHuggingPriority(.required, for: .horizontal)
        label1.setContentCompressionResistancePriority(.required, for: .horizontal)
        label2.setContentHuggingPriority(.required, for: .horizontal)
        label2.setContentCompressionResistancePriority(.required, for: .horizontal)
    }

    func getLabelContentWithCount(count: Int) -> String {
        var str = String()
        for _ in 0..<count {
            str.append("label, ")
        }
        return str
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
