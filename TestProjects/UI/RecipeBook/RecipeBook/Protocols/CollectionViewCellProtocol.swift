//
//  CollectionViewCellProtocol.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

protocol CollectionViewCellProtocol: class {
    func loadImage(resourceName: String)
    func setCaption(captionText: String)
    func setRecipeDetails(recipeDetailsText: String)
}
