//
//  ViewController.swift
//  FaceBookLogin
//
//  Created by Appinventiv on 27/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let loginButton = FBSDKLoginButton()
        
        view.addSubview(loginButton)
        
        loginButton.frame = CGRect( x: 16 , y: 150 ,  width: view.frame.width - 32 , height: 50)
        
    }

    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
        print("  Did logged out of facebook")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if error != nil{
            print(error)
            return
        }
        
        print(" lOGGED IN SUCCESSFULLY")
    }

}

