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
        view?.setSectionInset(top: 20, left: 0, bottom: 0, right: 0)
        view?.setupCollectionViewCellToUseMaxWidth()
    }
    
    func numberOfSections() -> Int {
        return recipeBook?.categories?.count ?? 0
    }
    
    func numberOfItemsInSection(_ section: Int) -> Int {
        guard let recipeBook = recipeBook,
            let categories = recipeBook.categories else {
                return 0
        }
        
        if ((section < 0) || (section >= categories.count)) {
            return 0
        }
        
        guard let recipes = categories[section].recipes else {
            return 0
        }
        
        return recipes.count
    }
}
