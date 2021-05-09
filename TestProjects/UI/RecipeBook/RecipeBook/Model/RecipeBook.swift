//
//  RecipeBook.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation

class RecipeBook: NSObject {
    
    var categories: [RecipeCategory]?
    
    override init() {
        super.init()
        
        categories = [RecipeCategory]()
    }
    
    func load(filePath: String?) {
        
        guard let path = filePath,
              let array = NSArray(contentsOfFile: path) as [AnyObject]? else { return }
        
        for item in array {
            guard let dictionary = item as? [String : AnyObject] else {
                continue
            }
            
            if let category = RecipeCategory(dictionary) {
                categories?.append(category)
            }
        }
    }
}
