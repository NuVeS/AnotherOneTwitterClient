//
//  AuthModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 25/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Module interface
protocol AuthModuleInput
{
    func setupDelegate(output: AuthModuleOutput)
}

//MARK: Output
protocol AuthModuleOutput: class
{
    func userDidSignIn(user: UserModel)
}


// MARK: - Presenter
final class AuthPresenter: AuthModuleInput
    , AuthViewOutput
    , AuthInteractorOutput
{
    weak var view: AuthViewInput!
    var interactor: AuthInteractorInput!
	weak var router: AuthRouter!
    weak var output: AuthModuleOutput?

    func setupDelegate(output: AuthModuleOutput)
    {
        self.output = output
    }


    // MARK: - Interactor Output

    // MARK: - View Output
    
    func signInDidSelect()
    {
       output?.userDidSignIn(UserModel()) // Sign in emulation
    }
    
}