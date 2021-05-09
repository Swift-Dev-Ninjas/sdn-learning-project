//
//  RecipeCategory.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

public struct RecipeCategory {
    
    public var id: Int
    public var title: String
    public var recipes: [Recipe]?
    
    public init(id: Int, title: String, recipes: [Recipe]?) {
        self.id = id
        self.title = title
        self.recipes = recipes
    }
    
    let idKey = "id"
    let categoryKey = "category"
    let recipesKey = "recipes"
    
    init?(_ dictionary: [String:AnyObject]?) {
        guard let dictionary = dictionary,
            let id = dictionary[idKey] as? Int,
            let categoryName = dictionary[categoryKey] as? String,
            let array = dictionary[recipesKey] as? [AnyObject] else {
                return nil
        }
                
        self.id = id
        self.title = categoryName
        self.recipes = [Recipe]()
        
        for item in array {
            guard let dictionary = item as? [String : AnyObject] else {
                continue
            }
            
            if let recipe = Recipe(dictionary) {
                recipes?.append(recipe)
            }
        }
    }
}
