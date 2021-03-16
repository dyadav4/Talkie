//
//  BoxBind.swift
//  Talkie
//
//  Created by Dharamvir Yadav on 17/09/20.
//  Copyright © 2020 Dharamvir Yadav. All rights reserved.
//

import Foundation


class BoxBind<T> {
    typealias Listener = (T) -> ()
    
    // MARK:- variables for the binder
    var value: T {
        didSet {
            listener?(value)
        }
    }

    var listener: Listener?
    
    // MARK:- initializers for the binder
    init(_ value: T) {
        self.value = value
    }
    
    // MARK:- functions for the binder
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
