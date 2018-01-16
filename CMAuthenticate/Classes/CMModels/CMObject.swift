//
//  CMObject.swift
//  Components
//
//  Created by Lakshmi Kodali on 04/12/17.
//  Copyright © 2017 Lakshmi Kodali. All rights reserved.
//

import UIKit

public class CMObject: NSObject {
    //MARK:- Convert Object to Dictionary
  public  func convertModeltoDictionary() -> Dictionary<String,Any> {
       
        var response = Dictionary<String,Any>()
        var mirror: Mirror? = Mirror(reflecting: self)
        repeat {
            for property in mirror!.children {
                response[property.label!] = self.value(forKey: property.label!)
            }
            mirror = mirror?.superclassMirror
        } while mirror != nil
        
        return response
    }
    
    
}
