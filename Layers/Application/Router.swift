//
//  Router.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/16.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit


class Router: AuthModuleOutput
{
    weak var resources: Dependencies!
    
    init(dependencies: Dependencies)
    {
        self.resources = dependencies
    }
    
    // MARK: Router interface
    func start()
    {
        AuthAssembly.createModule { module in
            module.setupDelegate(self)
        }.present(fromWindow: resources.window)
    }
    
    // MARK: Auth module output
    func userDidSignIn(user: UserModel?)
    {
        let mainScreen = MainAssembly.createModule(resources: resources) { module in}
        mainScreen.present(fromWindow: resources.window)
    }
}