//
//  MainRouter.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Router
final class MainRouter: VIPERRouter
{
    weak var viewController: MainViewController!
    
    func loadTabsControllers()
    {
        let feed = FeedAssembly.createModule { module in }
        let profile = ProfileAssembly.createModule { module in }
        viewController.setViewControllers([feed, profile], animated: false)
    }
}