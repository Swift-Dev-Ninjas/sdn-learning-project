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

// MARK: Init_ValidView tests

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
        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
        XCTAssertNotNil(viewModel.recipeBook)
    }
    
    func testInit_ValidView_RecipeBookIsLoaded() {
        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
        let categories = viewModel.recipeBook!.categories!
        XCTAssertGreaterThan(categories.count, 0)
    }
}

// MARK: performInitialViewSetup tests
extension CollectionViewModelTests {
    
    func testPerformInitialViewSetup_Calls_SetNavigationTitle_OnCollectionViewController() {
        let expectation = self.expectation(description: "expected setNavigationTitle() to be called")
        mockCollectionViewController!.expectationForSetNavigationTitle = expectation
        
        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        viewModel.performInitialViewSetup()
        
        self.waitForExpectations(timeout: 1.0, handler: nil)

    }
    
    func testPerformInitialViewSetup_Calls_SetSectionInset_OnCollectionViewController() {
        let expectation = self.expectation(description: "expected setSectionInset() to be called")
        mockCollectionViewController!.expectationForSetSectionInset = expectation

        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        viewModel.performInitialViewSetup()

        self.waitForExpectations(timeout: 1.0, handler: nil)

    }
    
    func testPerformInitialViewSetup_Calls_SetupCollectionViewCellToUseMaxWidth_OnCollectionViewController() {
        let expectation = self.expectation(description: "expected setupCollectionViewCellToUseMaxWidth() to be called")
        mockCollectionViewController!.expectationForSetupCollectionViewCellToUseMaxWidth = expectation

        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        viewModel.performInitialViewSetup()

        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
}
