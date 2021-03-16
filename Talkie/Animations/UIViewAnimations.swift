//
//  UIViewAnimations.swift
//  Talkie
//
//  Created by Dharamvir Yadav on 20/09/20.
//  Copyright © 2020 Dharamvir Yadav. All rights reserved.
//

import UIKit

enum ViewAnimationFactory {
    static func makeEaseInAnimation(duration: TimeInterval, delay: TimeInterval, action: @escaping() -> Void) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            action()
        })
    }
    static func makeEaseInOutAnimation(duration: TimeInterval, delay: TimeInterval, action: @escaping() -> Void) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseInOut, animations: {
            action()
        })
    }
    static func makeEaseOutAnimation(duration: TimeInterval, delay: TimeInterval, action: @escaping() -> Void) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            action()
        })
    }
    
    static func makeSimpleAnimation(duration: TimeInterval, action: @escaping() -> Void){
        UIView.animate(withDuration: duration) {
            action()
        }
    }
}
