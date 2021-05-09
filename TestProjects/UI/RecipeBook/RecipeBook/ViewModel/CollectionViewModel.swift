//
//  CollectionViewModel.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

class CollectionViewModel {
    
    weak var view: CollectionViewControllerProtocol?
    
    init(view: CollectionViewControllerProtocol) {
        self.view = view
    }
}
