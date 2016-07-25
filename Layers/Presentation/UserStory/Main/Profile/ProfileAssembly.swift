//
//  ProfileAssembly.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

final class ProfileAssembly
{
    class func createModule(configure: (module: ProfileModuleInput) -> Void) -> ProfileViewController
    {
        let vc = R.storyboard.feed.profileViewController()!
        vc.tabBarItem = UITabBarItem(title: vc.title, image: R.image.profile()!, tag: 0)
        let interactor = ProfileInteractor()
        let presenter = ProfilePresenter()
        let router = ProfileRouter()


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