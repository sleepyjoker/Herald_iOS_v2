//
//  HearldUserDefault.swift
//  Hearld_iOS_v2
//
//  Created by Nathan on 23/10/2017.
//  Copyright © 2017 Nathan. All rights reserved.
//

import Foundation

private let uuidKey = "uuid"
private let isLoginKey = "isLogin"

class HearldUserDefault{
    static let defaults = UserDefaults.standard
    
    public static var ifLogin: Bool?{
        set{
            set(isLoginKey,newValue)
        }
        get{
            return get(isLoginKey) ?? nil
        }
    }
    
    public static var uuid: String?{
        set{
            set(uuidKey,newValue)
        }
        get{
            return get(uuidKey) ?? nil
        }
    }
    
    public func cleanAllUserDefault(){
        HearldUserDefault.defaults.removeObject(forKey: uuidKey)
        HearldUserDefault.defaults.removeObject(forKey: isLoginKey)
    }
    
    class func set<T>(_ key: String, _ value : T) {
        HearldUserDefault.defaults.set(value, forKey: key)
    }
    
    class func get<T>(_ key: String) -> T? {
        if let value = HearldUserDefault.defaults.object(forKey: key){
            return value as? T
        }
        return nil
    }
    
}