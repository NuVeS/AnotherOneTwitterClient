//
//  Dependencies.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/16.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

class Dependencies
{
    // Application main window
    weak var window: UIWindow!
    
    var router: Router!
    
    init(window: UIWindow)
    {
        self.window = window
        setup()
    }
    
    func setup()
    {
        router = Router(dependencies: self)
    }
    
    
    
}