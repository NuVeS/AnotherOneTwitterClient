//
//  MainInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface
protocol MainInteractorInput: class
{

}

//MARK: Output
protocol MainInteractorOutput: class
{

}

// MARK: - Interactor
final class MainInteractor: MainInteractorInput
{
    weak var output: MainInteractorOutput!
}