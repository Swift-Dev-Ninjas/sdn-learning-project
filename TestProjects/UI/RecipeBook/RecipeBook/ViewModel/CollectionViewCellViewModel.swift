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
}
