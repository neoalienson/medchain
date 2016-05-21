//
//  ViewController.swift
//  Medchain
//
//  Created by Neo on 5/22/16.
//  Copyright © 2016 padblish. All rights reserved.
//

import UIKit
import ZXingObjC

class ViewController: UIViewController, ZXCaptureDelegate {

    let capture = ZXCapture()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.capture.delegate = self
    }
    
    func captureResult(capture: ZXCapture!, result: ZXResult!) {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        self.capture.stop()
        self.capture.layer.removeFromSuperlayer()
    }
    
    @IBAction func scan() {
        self.capture.focusMode = .AutoFocus
        self.capture.camera = self.capture.back()
        self.capture.layer.frame = self.view.bounds
        self.view.layer.addSublayer(capture.layer)
    }
}

