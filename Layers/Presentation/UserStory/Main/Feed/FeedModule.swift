//
//  FeedModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import TwitterKit

// MARK: - Module interface
protocol FeedModuleInput
{
    func setupDelegate(output: FeedModuleOutput)
}

//MARK: Output
protocol FeedModuleOutput: class
{
    func loadTweets()
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
        interactor.loadTweets()
    }


    // MARK: - Interactor Output
    
    func loadedTweets(tweet: TWTRTweet) {
        view.showTweet(tweet)
    }

    // MARK: - View Output
    func didLoad() {
        interactor.loadTweets()
    }
    
}