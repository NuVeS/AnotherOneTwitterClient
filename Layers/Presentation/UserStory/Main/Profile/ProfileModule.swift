//
//  ProfileModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Module interface
protocol ProfileModuleInput
{
    func setupDelegate(output: ProfileModuleOutput)
}

//MARK: Output
protocol ProfileModuleOutput: class
{

}


// MARK: - Presenter
final class ProfilePresenter: ProfileModuleInput
    , ProfileViewOutput
    , ProfileInteractorOutput
{
    weak var view: ProfileViewInput!
    var interactor: ProfileInteractorInput!
	weak var router: ProfileRouter!
    weak var output: ProfileModuleOutput?

    func setupDelegate(output: ProfileModuleOutput)
    {
        self.output = output
    }


    // MARK: - Interactor Output

    // MARK: - View Output
}