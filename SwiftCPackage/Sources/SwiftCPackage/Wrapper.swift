//
//  File.swift
//  SwiftCLib
//
//  Created by Kirow on 16.07.2022.
//

import Foundation
import CLib

public struct Wrapper {
    public static func run(name: String, x: Int, y: Int) {
        callCfunction(name, 3, 4)
    }
}
