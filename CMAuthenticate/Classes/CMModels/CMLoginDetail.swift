//
//  CMUser.swift
//  Components
//
//  Created by Mukesh Muteja on 04/12/17.
//  Copyright © 2017 Mukesh Muteja. All rights reserved.
//  Request Type missing for forget

import UIKit


public class CMLoginDetail: CMBaseUser {
    
     @objc dynamic var password : String = ""
    @objc dynamic var returnSecureToken : Bool = false
    
  public  convenience init(_ param : NSDictionary) {
        self.init(param as! [String : Any])
        
    }
    
   
}
