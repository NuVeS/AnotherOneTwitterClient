//
//  SideMenuInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface
protocol SideMenuInteractorInput: class
{

}

//MARK: Output
protocol SideMenuInteractorOutput: class
{

}

// MARK: - Interactor
final class SideMenuInteractor: SideMenuInteractorInput
{
    weak var output: SideMenuInteractorOutput!
}