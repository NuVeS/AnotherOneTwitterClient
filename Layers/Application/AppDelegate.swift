//
//  AppDelegate.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/16.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import ThreadsKit
import Fabric
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var resources: Dependencies!
    var router: Router!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Fabric.with([Twitter.self])
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        resources = Dependencies(window: window!)
        router = Router(dependencies: resources)
        router.start()
        
        return true
    }
}

