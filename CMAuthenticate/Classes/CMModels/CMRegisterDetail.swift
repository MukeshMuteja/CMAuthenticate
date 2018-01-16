//
//  CMRegisterModel.swift
//  Components
//
//  Created by Mukesh Muteja on 04/12/17.
//  Copyright © 2017 Mukesh Muteja. All rights reserved.
//

import Foundation
import UIKit


public class CMRegisterDetail: CMLoginDetail {
    
    @objc dynamic var confirmPassword : String = ""
    
  public  convenience init(_ param : NSDictionary) {
        self.init(param as! [String : Any])
        
    }
    
    
}
