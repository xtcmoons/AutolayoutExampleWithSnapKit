//
//  Case2ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/6.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit
import SnapKit

class Case2ViewController: UIViewController {

    let imageSize = 32

    var containerView: UIView!
    var imageViews = [UIImageView]()
    var widthConstraints = [Constraint]()
    var imageNames = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageNames = ["bluefaces_1", "bluefaces_2", "bluefaces_3", "bluefaces_4"];

        self.setupContainerView()
    }

    func setupContainerView() {
        containerView = UIView()
        containerView.backgroundColor = UIColor.gray
        self.view.addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.height.equalTo(imageSize)
            make.centerX.equalTo(self.view.snp.centerX)
            make.top.equalTo(self.view).offset(200)
        }

        for i in 0..<4 {
            let imageName = imageNames[i]
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image)
            imageViews.append(imageView)
            containerView.addSubview(imageView)
        }

        let imageViewSize = CGSize(width: imageSize, height: imageSize)

        var lastView: UIView?
        var widthConstraint: Constraint?
        for item in imageViews.enumerated() {
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
