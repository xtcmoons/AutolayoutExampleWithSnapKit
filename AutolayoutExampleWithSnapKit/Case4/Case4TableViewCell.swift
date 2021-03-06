//
//  Case4TableViewCell.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/6.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit
import SnapKit

class Case4TableViewCell: UITableViewCell {

    let avatarImageView = UIImageView()
    let titleLabel = UILabel()
    let contentLabel = UILabel()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        avatarImageView.backgroundColor = UIColor.red
        titleLabel.text = "title"
        contentLabel.text = "content, content"
        contentLabel.numberOfLines = 0
        contentLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.size.width - 20 - 44 - 10

        self.contentView.addSubview(avatarImageView)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(contentLabel)

        avatarImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(44)
            make.left.top.equalTo(self.contentView).offset(4)
        }

        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.contentView).offset(10)
            make.left.equalTo(self.avatarImageView.snp.right).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
        }

        contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLabel.snp.bottom).offset(10)
            make.left.equalTo(self.avatarImageView.snp.right).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
            make.bottom.equalTo(self.contentView)
        }

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
