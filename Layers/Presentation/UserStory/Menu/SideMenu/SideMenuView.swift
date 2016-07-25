//
//  SideMenuView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Interface
protocol SideMenuViewInput: class
{

}

protocol SideMenuViewOutput: class
{

}

// MARK: - View Controller
final class SideMenuViewController: BaseViewController
    , SideMenuViewInput
{
    var output: SideMenuViewOutput!
    typealias RouterType = SideMenuRouter
    var router: RouterType!

    // MARK: Presenting
    
    
    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* Initialization here */
    }

    // MARK: View Input
}