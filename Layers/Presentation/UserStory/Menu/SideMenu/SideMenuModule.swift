//
//  SideMenuModule.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit

// MARK: - Module interface
protocol SideMenuModuleInput
{
    func setupDelegate(output: SideMenuModuleOutput)
}

//MARK: Output
protocol SideMenuModuleOutput: class
{

}


// MARK: - Presenter
final class SideMenuPresenter: SideMenuModuleInput
    , SideMenuViewOutput
    , SideMenuInteractorOutput
{
    weak var view: SideMenuViewInput!
    var interactor: SideMenuInteractorInput!
	weak var router: SideMenuRouter!
    weak var output: SideMenuModuleOutput?

    func setupDelegate(output: SideMenuModuleOutput)
    {
        self.output = output
    }


    // MARK: - Interactor Output

    // MARK: - View Output
}