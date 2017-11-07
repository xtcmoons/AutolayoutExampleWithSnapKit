//
//  Case6ItemView.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/7.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit

class Case6ItemView: UIView {

    let imageView = UIImageView()
    let label = UILabel()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(imageName: UIImage, text: String) {
        super.init(frame: .zero)

        self.backgroundColor = UIColor.gray
        label.textColor = UIColor.black
        label.text = text as String
        label.numberOfLines = 0

        imageView.image = imageName

        self.addSubview(imageView)
        self.addSubview(label)

        imageView.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(4)
            make.top.equalTo(self).offset(4)
            make.right.equalTo(self).offset(-4)
        }
//        Hugging priority 确定view有多大的优先级阻止自己变大。
//        Compression Resistance priority确定有多大的优先级阻止自己变小。
        imageView.setContentHuggingPriority(.required, for: .vertical)
        imageView.setContentHuggingPriority(.required, for: .horizontal)

        label.snp.makeConstraints { (make) in
            make.width.equalTo(imageView.snp.width)
            make.left.equalTo(imageView.snp.left)
            make.top.equalTo(imageView.snp.bottom).offset(4)
            make.bottom.equalTo(self.snp.bottom).offset(-4)
        }
        label.setContentHuggingPriority(.required, for: .vertical)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
