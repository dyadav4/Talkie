//
//  Generic.swift
//  Talkie
//
//  Created by Dharamvir Yadav on 20/09/20.
//  Copyright © 2020 Dharamvir Yadav. All rights reserved.
//

import UIKit

enum Favorites: String {
    case favoriteActors = "favoriteActors"
    case favoriteMovies = "favoriteMovies"
}

struct Generic {
    let colors = [UIColor.systemRed, UIColor.systemTeal, UIColor.systemIndigo, UIColor.systemOrange, UIColor.systemGreen, UIColor.systemYellow]
    
    static var shared: Generic {
        return Generic()
    }
    
    func getRandomColor() -> UIColor {
        return colors.randomElement()!
    }
}


protocol ComponentShimmers {
    var animationDuration: Double { get }

    func hideViews()
    func showViews()    
    func setShimmer()
    func removeShimmer()
}

protocol Likeable {
    var favoriteType: Favorites { get }
    
    func likePressed(id: String) -> Bool
    func checkIfFavorite(id: String) -> Bool
}

