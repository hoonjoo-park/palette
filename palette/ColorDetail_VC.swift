//
//  ColorDetail_VC.swift
//  palette
//
//  Created by Hoonjoo Park on 2022/10/29.
//

import UIKit

class ColorDetail_VC: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .magenta
    }
}
