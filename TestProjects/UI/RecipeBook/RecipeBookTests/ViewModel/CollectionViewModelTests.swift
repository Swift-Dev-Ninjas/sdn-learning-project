//
//  CollectionViewModelTests.swift
//  RecipeBookTests
//
//  Created by Christian Slanzi on 09.05.21.
//

import XCTest
@testable import RecipeBook

class CollectionViewModelTests: XCTestCase {

    fileprivate var mockCollectionViewController: MockCollectionViewController?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        mockCollectionViewController = MockCollectionViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

extension CollectionViewModelTests {
    
    func testInit_ValidView_InstantiatesObject() {
        let viewModel = CollectionViewModel(view: mockCollectionViewController!)
        XCTAssertNotNil(viewModel)
    }
    
    func testInit_ValidView_CopiesViewToIvar() {
        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)

        XCTAssertNotNil(viewModel.view)
        
        if let lhs = mockCollectionViewController, let rhs = viewModel.view as? MockCollectionViewController {
    
            XCTAssertTrue(lhs === rhs)
        }
    }
    
    func testInit_ValidView_RecipeBookIVarIsNotNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        XCTAssertNotNil(viewModel.recipeBook)
    }
}