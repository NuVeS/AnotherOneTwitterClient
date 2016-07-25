//
//  FeedInteractor.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 22/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

// MARK: - Interface
protocol FeedInteractorInput: class
{

}

//MARK: Output
protocol FeedInteractorOutput: class
{

}

// MARK: - Interactor
final class FeedInteractor: FeedInteractorInput
{
    weak var output: FeedInteractorOutput!
}