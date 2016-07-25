//
//  FeedModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Module interface
protocol FeedModuleInput
{
    func setupDelegate(output: FeedModuleOutput)
}

//MARK: Output
protocol FeedModuleOutput: class
{

}


// MARK: - Presenter
final class FeedPresenter: FeedModuleInput
    , FeedViewOutput
    , FeedInteractorOutput
{
    weak var view: FeedViewInput!
    var interactor: FeedInteractorInput!
	weak var router: FeedRouter!
    weak var output: FeedModuleOutput?

    func setupDelegate(output: FeedModuleOutput)
    {
        self.output = output
    }


    // MARK: - Interactor Output

    // MARK: - View Output
}