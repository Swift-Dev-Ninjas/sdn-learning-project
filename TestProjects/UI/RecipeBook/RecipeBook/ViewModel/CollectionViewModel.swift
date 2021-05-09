//
//  CollectionViewModel.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

class CollectionViewModel {
    
    weak var view: CollectionViewControllerProtocol?
    
    var recipeBook: RecipeBook?
    
    init(view: CollectionViewControllerProtocol) {
        self.view = view
        
        if recipeBook == nil {
            recipeBook = RecipeBook()
        }
        
        let path = Bundle.main.path(forResource: "RecipeBook", ofType: "plist")
        recipeBook?.load(filePath: path)
    }
    
    func performInitialViewSetup() {
        
        view?.setNavigationTitle("Recipes Book")
    }
}
