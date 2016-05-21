//
//  ViewController.swift
//  Medchain
//
//  Created by Neo on 5/22/16.
//  Copyright © 2016 padblish. All rights reserved.
//

import UIKit
import ZXingObjC

class ViewController: UIViewController {

    let capture = ZXCapture()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.capture.focusMode = .AutoFocus
        self.view.layer.addSublayer(capture.layer)
    }

}

