//
//  Case7ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/7.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit
import SnapKit

class Case7ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    deinit {
        tableView.removeObserver(self, forKeyPath: "contentOffset")
    }

    let tableView = UITableView()
    let parallaxHeaderView = UIImageView()
    var parallaxHeaderHeightConstraint: ConstraintMakerEditable!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupSubViews()
    }


    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "contentOffset" {
            let contentOffset = (change![NSKeyValueChangeKey.newKey] as! NSValue).cgPointValue
            if contentOffset.y < -135 {
                parallaxHeaderHeightConstraint.offset(-contentOffset.y)
            }
        }
    }

    func setupSubViews() {

        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)

        parallaxHeaderView.contentMode = .scaleToFill
        parallaxHeaderView.image = UIImage(named: "parallax_header_back")

        self.view.addSubview(parallaxHeaderView)

        tableView.addObserver(self, forKeyPath: "contentOffset", options: .new, context: nil)

        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }

        parallaxHeaderView.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.view)
            make.top.equalTo(self.view.snp.top)
            //FIX: 有bug
            parallaxHeaderHeightConstraint = make.height.equalTo(135)
        }
    }

    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "CellID")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "CellID")
        }

        cell?.textLabel?.text = String(indexPath.row)

        return cell!
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
