//
//  MainView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Interface
protocol MainViewInput: class
{

}

protocol MainViewOutput: class
{
    
}

// MARK: - View Controller
final class MainViewController: UITabBarController
    , MainViewInput
{
    var output: MainViewOutput!
    var router: MainRouter!
    
    // MARK: Presenting
    func present(fromWindow window:UIWindow)
    {
        router.present(self, using: window)
    }
    
    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: View Input
}