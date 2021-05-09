//
//  RecipeCategory.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

public struct RecipeCategory: Equatable {
    
    public var id: Int
    public var title: String
    public var photos: [Recipe]?
    
    public init(id: Int, title: String, photos: [Recipe]?) {
        self.id = id
        self.title = title
        self.photos = photos
    }
}
