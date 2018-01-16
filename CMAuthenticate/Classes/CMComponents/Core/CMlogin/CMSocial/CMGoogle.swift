//
//  CMGoogle.swift
//  Components
//
//  Created by Mukesh Muteja on 07/11/17.
//  Copyright © 2017 Mukesh Muteja. All rights reserved.
//

import Foundation
import GoogleSignIn

extension CMLogin: GIDSignInUIDelegate, GIDSignInDelegate {
    
    /**
     Fetch user Detail from google and create login request
     
     @param viewController to present facebook viewController
     
     @param urlString login Url String for login request
     
     @param api Specified service type .Get or .Post
     
     @return response by CMLoginDelegate
     */
    
    func googleLogin( pUrl:String, pApi: CMApiType, _ result:@escaping (_ response : CMResponse) -> () ) {
        //Google Configure
        GIDSignIn.sharedInstance().clientID = self.fetchDetailFor(CONSTANT.sGOOGLE_ID)
        loginUrl = pUrl
        apiType = pApi
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        selfController = topController()
        GIDSignIn.sharedInstance().signIn()
        completionHandler = result
    }

     func sign(inWillDispatch signIn: GIDSignIn!, error: Error!) {
        //stop indicator
    }


    // Present a view that prompts the user to sign in with Google
    func sign(_ signIn: GIDSignIn!,
              present viewController: UIViewController!) {
        selfController?.present(viewController, animated: true, completion: nil)
    }

    // Dismiss the "Sign in with Google" view
    func sign(_ signIn: GIDSignIn!,
              dismiss viewController: UIViewController!) {
        selfController?.dismiss(animated: true, completion: nil)
    }

    
    //Get Data from Google
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if (error == nil) {
            // Perform any operations on signed in user here.
                let idToken = user.authentication.accessToken // Safe to send to the server
            
                //Call loginApi
                let accessToken = "\(CONSTANT.sACCESS_TOKEN)=\(idToken!)\(CONSTANT.sPROVIDE_GOOGLE)"
                CMServerHandler.sharedInstance.serverSocialRequest(accessToken, loginUrl!, apiType!, { (result, error) in
                    if error != nil {
                        let responseModel = CMResponse().getError(CONSTANT.sSERVER_ERROR, error)
                        self.completionHandler!(responseModel)
                    }
                    else {
                        let responseModel = CMResponse().getSuccess(CONSTANT.sLOGIN_SUCESS, result)
                        self.completionHandler!(responseModel)
                    }
                })
            }
            else {
            let responseModel = CMResponse().getError(CONSTANT.sGOOGLE_ERROR, error)
            completionHandler!(responseModel)
        }
        
    }
    
    
}

