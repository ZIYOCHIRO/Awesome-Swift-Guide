//
//  Double+Ext.swift
//  Altitude
//
//  Created by Sean Allen on 9/3/18.
//  Copyright © 2018 Sean Allen. All rights reserved.
//

import Foundation

extension Double {
    
    func rounded(toDecimalPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
