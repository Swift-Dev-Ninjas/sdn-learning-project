//
//  Recipe.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

public struct Recipe: Equatable {
    
    public var id: Int
    public var calories: Int?
    public var carbs: String?
    public var fat: String?
    public var image: String
    public var imageType: String
    public var protein: String?
    public var title: String
    
    public init(id: Int, calories: Int? = nil, carbs: String? = nil,
                fat: String? = nil, image: String, imageType: String,
                protein: String? = nil, title: String) {
        self.id = id
        self.calories = calories
        self.carbs = carbs
        self.fat = fat
        self.image = image
        self.imageType = imageType
        self.protein = protein
        self.title = title
    }
    
    let idKey = "id"
    let caloriesKey = "calories"
    let carbsKey = "carbs"
    let fatKey = "fat"
    let imageKey = "image"
    let imageTypeKey = "imageType"
    let proteinKey = "protein"
    let titleKey = "title"
    
    init?(_ dictionary: [String : AnyObject]?) {
        
        guard let dictionary = dictionary,
            let id = dictionary[idKey] as? Int,
            let calories = dictionary[caloriesKey] as? Int,
            let carbs = dictionary[carbsKey] as? String,
            let fat = dictionary[fatKey] as? String,
            let image = dictionary[imageKey]  as? String,
            let imageType = dictionary[imageTypeKey]  as? String,
            let protein = dictionary[proteinKey]  as? String,
            let title = dictionary[titleKey]  as? String else {
                return nil
        }
                
        self.id = id
        self.calories = calories
        self.carbs = carbs
        self.fat = fat
        self.image = image
        self.imageType = imageType
        self.protein = protein
        self.title = title
    }
}
