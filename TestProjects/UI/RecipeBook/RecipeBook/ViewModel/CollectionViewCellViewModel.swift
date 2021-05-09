//
//  CollectionViewCellViewModel.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

class CollectionViewCellViewModel {
    
    var recipe: Recipe?
    weak var collectionViewCell: CollectionViewCellProtocol?
    
    init?(model: Recipe?) {
        
        guard let model = model else {
            return nil
        }
        
        self.recipe = model
    }
    
    func setView(_ view: CollectionViewCellProtocol) {
        self.collectionViewCell = view
    }
    
    func setup() {
        guard let collectionViewCell = collectionViewCell,
              let recipe = recipe,
              let calories = recipe.calories else {
            return
        }
        
        collectionViewCell.loadImage(resourceName: recipe.image)
        collectionViewCell.setCaption(captionText: recipe.title)
        collectionViewCell.setRecipeDetails(recipeDetailsText: "\(calories) kCal")
    }
}
