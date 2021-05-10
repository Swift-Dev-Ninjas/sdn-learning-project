//
//  MockCollectionViewCell.swift
//  RecipeBookTests
//
//  Created by Christian Slanzi on 09.05.21.
//

import Foundation
import XCTest
@testable import RecipeBook

/*
class MockCollectionViewCell: CollectionViewCellProtocol {
   
    var expectationForLoadImage: (XCTestExpectation, String?)?
    var expectationForSetCaption: (XCTestExpectation, String?)?
    var expectationForSetupRecipeDetails: (XCTestExpectation, String?)?
    
    func loadImage(resourceName: String) {
        guard let (expectation, expectedValue) = self.expectationForLoadImage else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (resourceName.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
    
    func setCaption(captionText:String) {
        guard let (expectation, expectedValue) = self.expectationForSetCaption else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (captionText.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
    
    func setRecipeDetails(recipeDetailsText: String) {
        guard let (expectation, expectedValue) = self.expectationForSetupRecipeDetails else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (recipeDetailsText.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
}
*/
