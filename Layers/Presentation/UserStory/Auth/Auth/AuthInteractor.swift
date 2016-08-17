//
//  AuthInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 25/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface

import TwitterKit

protocol AuthInteractorInput: class
{
    
}

//MARK: Output
protocol AuthInteractorOutput: class
{
    
}

// MARK: - Interactor
final class AuthInteractor: AuthInteractorInput
{
    weak var output: AuthInteractorOutput!
    
}