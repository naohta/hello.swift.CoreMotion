//
//  MainVC.swift
//  hello.CoreMotion
//
//  Created by Naohiro OHTA on Jun15,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit
import CoreMotion

class MainVC: UIViewController {

    @IBOutlet weak var acceleLabel: UILabel!

    override func viewDidLoad() {
        helloCoreMotion()
    }


    // Hello! CoreMotion
    // -----------------

    var motionManager = CMMotionManager()

    func helloCoreMotion() {
        println("Hello!")

        motionManager.accelerometerUpdateInterval = 1/10

        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()) {
            data, error in

            if let e = error {
                println("error: \(e)")
                return
            }

            let d = data.acceleration

            let x=round(d.x*10000)
            let y=round(d.y*10000)
            let z=round((d.z)*10000)

            self.acceleLabel.text = "x=\(x)\ny=\(y)\n z=\(z)"
            println("x=\(x), y=\(y),  z=\(z)")


        }
        
    }


}
