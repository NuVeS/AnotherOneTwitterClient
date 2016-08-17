//
//  AuthAssembly.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 25/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

final class AuthAssembly
{
    class func createModule(configure: (module: AuthModuleInput) -> Void) -> AuthViewController
    {
        let vc = R.storyboard.auth.authViewController()!
        let interactor = AuthInteractor()
        let presenter = AuthPresenter()
        let router = AuthRouter()


        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
		
        configure(module: presenter)

        vc.output = presenter
        vc.router = router

        router.viewController = vc
		router.presenter = presenter

        return vc
    }
}