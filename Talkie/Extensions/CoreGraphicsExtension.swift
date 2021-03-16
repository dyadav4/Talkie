//
//  CoreGraphicsExtension.swift
//  Talkie
//
//  Created by Dharamvir Yadav on 18/09/20.
//  Copyright © 2020 Dharamvir Yadav. All rights reserved.
//

import UIKit

extension CALayer {
    
    func removeLayerIfExists(_ view: UIView) {
        if let lastLayer = view.layer.sublayers?.last {
            let isPresent = lastLayer is ShimmerLayer
            if isPresent {
                self.removeFromSuperlayer()
            }
        }
    }
}
