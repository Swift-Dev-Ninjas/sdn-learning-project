//
//  CollectionViewControllerProtocol.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

protocol CollectionViewControllerProtocol: class {
    func setNavigationTitle(_ title: String)
    func setSectionInset(top:Float, left:Float, bottom:Float, right:Float)
}
