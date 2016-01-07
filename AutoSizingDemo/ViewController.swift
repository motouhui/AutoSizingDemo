//
//  ViewController.swift
//  AutoSizingDemo
//
//  Created by Arthur Wang on 1/7/16.
//  Copyright © 2016 Yangapp.com. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var scrollView: UIScrollView!
    var label: UILabel!
    var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteColor()

        scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(20)
            make.right.bottom.left.equalTo(view)
        }

        label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFontOfSize(30)
        scrollView.addSubview(label)
        label.snp_makeConstraints { (make) -> Void in
            make.top.width.centerX.equalTo(scrollView)
        }

        textView = UITextView()
        textView.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        textView.font = UIFont.systemFontOfSize(20)
        textView.scrollEnabled = false
        scrollView.addSubview(textView)
        textView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(label.snp_bottom)
            make.width.centerX.bottom.equalTo(scrollView)
        }
    }


}

