//
//  MainModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import ThreadsKit

// MARK: - Module interface
protocol MainModuleInput
{
    func setupDelegate(output: MainModuleOutput)
}

//MARK: Output
protocol MainModuleOutput: class
{

}


// MARK: - Presenter
final class MainPresenter: MainModuleInput
    , MainViewOutput
    , MainInteractorOutput
{
    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
	weak var router: MainRouter!
    weak var output: MainModuleOutput?

    func setupDelegate(output: MainModuleOutput)
    {
        self.output = output
    }

    // MARK: - Interactor Output

    // MARK: - View Output
    func setup()
    {
        DispatchToMainQueue { 
            self.router.loadTabsControllers()
        }
        
    }
}