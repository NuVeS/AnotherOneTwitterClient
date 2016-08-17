//
//  FeedView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import TwitterKit

// MARK: - Interface
protocol FeedViewInput: class
{
    func showTweet(tweet: TWTRTweet)
}

protocol FeedViewOutput: class
{
    func didLoad()
}

// MARK: - View Controller
final class FeedViewController: BaseViewController
    , FeedViewInput
{
    var output: FeedViewOutput!
    typealias RouterType = FeedRouter
    var router: RouterType!

    @IBOutlet var tweetView: TWTRTweetView!
    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        output.didLoad()
    }

    // MARK: View Input
    func showTweet(tweet: TWTRTweet) {
        tweetView.configureWithTweet(tweet)
    }
}