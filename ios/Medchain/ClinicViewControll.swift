//
//  ClinicViewControll.swift
//  Medchain
//
//  Created by Neo on 5/22/16.
//  Copyright © 2016 padblish. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ClinicViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ref = FIRDatabase.database().reference()
        ref.child("queue").childByAutoId().setValue(["name":"Neo"])
    }
}