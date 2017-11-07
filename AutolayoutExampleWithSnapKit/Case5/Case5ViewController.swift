//
//  Case5ViewController.swift
//  AutolayoutExampleWithSnapKit
//
//  Created by lppz_user02 on 2017/11/7.
//  Copyright © 2017年 xtcmoon. All rights reserved.
//

import UIKit
import SnapKit

class Case5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showOrHideTopBar(_ sender: UIButton) {
        self.navigationController?.setNavigationBarHidden(!(self.navigationController?.isNavigationBarHidden)!, animated: true)
        self.updateViewConstraints()
    }

    @IBAction func showOrHideBottomBar(_ sender: Any) {
        self.navigationController?.setToolbarHidden(!(self.navigationController?.isToolbarHidden)!, animated: true)
        self.updateViewConstraints()
    }

    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
