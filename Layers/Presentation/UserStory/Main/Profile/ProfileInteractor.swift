//
//  ProfileInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface
protocol ProfileInteractorInput: class
{

}

//MARK: Output
protocol ProfileInteractorOutput: class
{

}

// MARK: - Interactor
final class ProfileInteractor: ProfileInteractorInput
{
    weak var output: ProfileInteractorOutput!
}