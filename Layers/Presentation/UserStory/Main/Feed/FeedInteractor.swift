//
//  FeedInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface
import TwitterKit

protocol FeedInteractorInput: class
{
    func loadTweets()
}

//MARK: Output
protocol FeedInteractorOutput: class
{
    func loadedTweets(tweet: TWTRTweet)
}

// MARK: - Interactor
final class FeedInteractor: FeedInteractorInput
{
    weak var output: FeedInteractorOutput!
    
    func loadTweets(){
        TWTRAPIClient(userID: Twitter.sharedInstance().sessionStore.session()?.userID ).loadTweetWithID("510908133917487104") { (tweet, error) in
            if error == nil{
                self.output.loadedTweets(tweet!)
            }else{
                print("Cannot load tweet")
            }
        }
    }
}