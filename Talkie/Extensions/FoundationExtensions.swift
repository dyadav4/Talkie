//
//  FoundationExtensions.swift
//  Talkie
//
//  Created by Dharamvir Yadav on 17/09/20.
//  Copyright © 2020 Dharamvir Yadav. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
