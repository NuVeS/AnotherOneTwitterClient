//
//  AuthView.swift
//  AnotherOneTwitterClient
//
//  Created by Maksim Bazarov on 25/07/2016.
//  Copyright © 2016 VIPER. All rights reserved.
//

import UIKit
import TwitterKit

// MARK: - Interface
protocol AuthViewInput: class
{
    
}

protocol AuthViewOutput: class
{
    func signedInWithToken(token: String)
}

// MARK: - View Controller
final class AuthViewController: BaseViewController
    , AuthViewInput
{
    var output: AuthViewOutput!
    typealias RouterType = AuthRouter
    var router: RouterType!

    // MARK: Presenting
    func present(fromWindow window:UIWindow)
    {
        router.present(self, using: window)
    }

    // MARK: Interface builder
    
    @IBAction func signInAction(sender: AnyObject)
    {        
        let method =  TWTRLoginMethod.WebBasedForceLogin
        
        Twitter.sharedInstance().logInWithMethods(method) {  (session, error) in
            self.output?.signedInWithToken((session?.authTokenSecret)!)
            
        }

    }
    
    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* Initialization here */
    }
    
    

    // MARK: View Input
    
    
}