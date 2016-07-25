//
//  FeedView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Interface
protocol FeedViewInput: class
{

}

protocol FeedViewOutput: class
{

}

// MARK: - View Controller
final class FeedViewController: BaseViewController
    , FeedViewInput
{
    var output: FeedViewOutput!
    typealias RouterType = FeedRouter
    var router: RouterType!

    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()        
    }

    // MARK: View Input
}