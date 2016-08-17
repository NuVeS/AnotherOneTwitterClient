//
//  ProfileView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Interface
protocol ProfileViewInput: class
{

}

protocol ProfileViewOutput: class
{

}

// MARK: - View Controller
final class ProfileViewController: BaseViewController
    , ProfileViewInput
{
    var output: ProfileViewOutput!
    var router: ProfileRouter!

    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: View Input
}