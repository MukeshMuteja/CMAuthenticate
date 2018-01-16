//
//  CMBaseUser.swift
//  Components
//
//  Created by Mukesh Muteja on 04/12/17.
//  Copyright © 2017 Mukesh Muteja. All rights reserved.
//

import UIKit


public class CMBaseUser: CMObject {
    
    @objc dynamic var email : String = ""
    
   public convenience init(_ pParameters: [String : Any]) {
        self.init()
        self.setValuesForKeys(pParameters)
        
    }
    
}
