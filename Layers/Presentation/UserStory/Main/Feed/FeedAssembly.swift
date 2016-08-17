//
//  FeedAssembly.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

final class FeedAssembly
{
    class func createModule(configure: (module: FeedModuleInput) -> Void) -> FeedViewController
    {
        let vc = R.storyboard.feed.feedViewController()!
        vc.tabBarItem = UITabBarItem(title: vc.title, image: R.image.feed()!, tag: 0)
        let interactor = FeedInteractor()
        let presenter = FeedPresenter()
        let router = FeedRouter()


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