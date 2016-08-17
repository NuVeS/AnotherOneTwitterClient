//
//  MainAssembly.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

final class MainAssembly
{
    class func createModule(resources resources: Dependencies, configure: (module: MainModuleInput) -> Void) -> MainViewController
    {
        let vc = MainViewController()
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        let router = MainRouter()


        vc.output = presenter
        vc.router = router
        
        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
		
        configure(module: presenter)
        router.viewController = vc
        
        presenter.setup()
        return vc
    }
}