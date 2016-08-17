//
//  SideMenuAssembly.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

final class SideMenuAssembly
{
    class func createModule(configure: (module: SideMenuModuleInput) -> Void) -> SideMenuViewController
    {
        let vc = R.storyboard.feed.sideMenuViewController()!
        let interactor = SideMenuInteractor()
        let presenter = SideMenuPresenter()
        let router = SideMenuRouter()


        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
		
        configure(module: presenter)

        vc.output = presenter
        vc.router = router

        router.view = vc

        return vc
    }
}