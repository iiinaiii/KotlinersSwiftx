//
//  ViewController.swift
//  Demo
//
//  Created by 石井直貴 on 2020/04/11.
//  Copyright © 2020 iiinaiii. All rights reserved.
//

import UIKit
import KotlinersSwiftx

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        test()
    }

    private func test() {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        label.text = "swift"
        label.textColor = .blue


        let label2 = UILabel().also { it in
            it.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            it.text = "swift"
            it.textColor = .blue
        }

        var label3: UILabel?
        label3 = UILabel()
        label3?.let { it in
            view.addSubview(it)
        }



    }


}

