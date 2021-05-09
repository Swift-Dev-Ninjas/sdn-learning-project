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
    
    let idKey = "id"
    let titleKey = "title"
    let imageKey = "image"
    let imageTypeKey = "imageType"
    let caloriesKey = "calories"
    let carbsKey = "carbs"
    let fatKey = "fat"
    let proteinKey = "protein"
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        var validRecipeDictionary1: [String : AnyObject]?
        validRecipeDictionary1 = [String : AnyObject]()
        validRecipeDictionary1![idKey] = 1 as AnyObject
        validRecipeDictionary1![titleKey] = "Club Sandwich" as AnyObject
        validRecipeDictionary1![imageKey] = "c-sandwich" as AnyObject
        validRecipeDictionary1![imageTypeKey] = "jpg" as AnyObject
        validRecipeDictionary1![caloriesKey] = 500 as AnyObject
        
        validRecipe = Recipe(validRecipeDictionary1)
        
        mockCollectionViewCell = MockCollectionViewCell()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}

// MARK: initialization tests
extension CollectionViewCellViewModelTests {
    
    func testInit_NilModel_DoesNotInstantiateObject() {
        let viewModel = CollectionViewCellViewModel(model: nil)
        XCTAssertNil(viewModel)
    }
    
    func testInit_ValidModel_InstantiatesObject() {
        let viewModel = CollectionViewCellViewModel(model: validRecipe)
        XCTAssertNotNil(viewModel)
    }
    
    func testInit_ValidModel_CopiesModelToIvar() {
        let viewModel =  CollectionViewCellViewModel(model: validRecipe)
        XCTAssertTrue(validRecipe === viewModel!.recipe!)
    }
    
}
