//
//  CollectionViewCellViewModelTests.swift
//  RecipeBookTests
//
//  Created by Christian Slanzi on 09.05.21.
//

import XCTest
@testable import RecipeBook

class CollectionViewCellViewModelTests: XCTestCase {

    fileprivate var validRecipe: Recipe?
    fileprivate var mockCollectionViewCell: MockCollectionViewCell?
    
    let imageNameKey = "imageName"
    let apertureKey = "aperture"
    let shutterSpeedKey = "shutterSpeed"
    let isoKey = "iso"
    let commentKey = "comment"
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        var validRecipeDictionary1: [String : AnyObject]?
        validRecipeDictionary1 = [String : AnyObject]()
        validRecipeDictionary1![imageNameKey] = "1" as AnyObject
        validRecipeDictionary1![apertureKey] = "f2.0" as AnyObject
        validRecipeDictionary1![shutterSpeedKey] = "1/250" as AnyObject
        validRecipeDictionary1![isoKey] = "100" as AnyObject
        validRecipeDictionary1![commentKey] = "Test photo" as AnyObject
        
        validRecipe = Recipe(validRecipeDictionary1)
        
        mockCollectionViewCell = MockCollectionViewCell()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
