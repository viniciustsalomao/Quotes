//
//  Configuration.swift
//  Pensamentos
//
//  Created by Vinícius Tinajero Salomão on 31/08/20.
//  Copyright © 2020 Vinícius Tinajero Salomão. All rights reserved.
//

import Foundation

enum UserDefaultsKeys: String {
    case timeInterval = "timeInterval"
    case colorScheme = "colorScheme"
    case autorefresh = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int {
        get {
            return defaults.integer(forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool {
        get {
            return defaults.bool(forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
    }
    
    private init() {
        if defaults.double(forKey: UserDefaultsKeys.timeInterval.rawValue) == 0 {
            defaults.set(8.0, forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
    }
    
}
