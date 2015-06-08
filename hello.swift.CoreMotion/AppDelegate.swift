//
//  AppDelegate.swift
//  hello.swift.CoreMotion
//
//  Created by Naohiro OHTA on Jun9,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit
import CoreMotion

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        helloCoreMotion()

        return true
    }


    // Hello! CoreMotion
    // -----------------

    var motionManager = CMMotionManager()

    func helloCoreMotion() {
        println("Hello!")

        motionManager.accelerometerUpdateInterval = 0.5

        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()) {
            data, error in

            if let e = error {
                println("error: \(e)")
                return
            }

            let d = data.acceleration
            println("x=\(d.x), y=\(d.y), z=\(d.z)")
        }

    }
}

