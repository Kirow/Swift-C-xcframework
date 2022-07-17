//
//  ViewController.swift
//  LibRunner
//
//  Created by Kirow on 16.07.2022.
//

import UIKit
import SwiftC

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Wrapper.run(name: "Runner", x: 1, y: 2)
    }


}

