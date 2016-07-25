//
//  AppDelegate.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/16.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import ThreadsKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var resources: Dependencies!
    var router: Router!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        resources = Dependencies(window: window!)
        router = Router(dependencies: resources)
        router.start()
        
        return true
    }


}

