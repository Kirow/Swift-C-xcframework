//
//  ViewController.swift
//  LibRunner
//
//  Created by Kirow on 16.07.2022.
//

import UIKit
import SwiftCLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Wrapper.run(name: "Hello", x: 1, y: 2)
    }


}

