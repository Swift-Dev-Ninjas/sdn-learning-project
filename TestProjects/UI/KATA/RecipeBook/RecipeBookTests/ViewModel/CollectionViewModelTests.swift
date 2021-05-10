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

}

// MARK: Init_ValidView tests

extension CollectionViewModelTests {
    
    func testInit_ValidView_InstantiatesObject() {
        let viewModel = CollectionViewModel(view: mockCollectionViewController!)
        XCTAssertNotNil(viewModel)
    }
    
    func testInit_ValidView_CopiesViewToIvar() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNotNil(viewModel.view)
//
//        if let lhs = mockCollectionViewController, let rhs = viewModel.view as? MockCollectionViewController {
//
//            XCTAssertTrue(lhs === rhs)
//        }
    }
    
    func testInit_ValidView_RecipeBookIVarIsNotNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        XCTAssertNotNil(viewModel.recipeBook)
    }
    
    func testInit_ValidView_RecipeBookIsLoaded() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        let categories = viewModel.recipeBook!.categories!
//        XCTAssertGreaterThan(categories.count, 0)
    }
}

// MARK: performInitialViewSetup tests
extension CollectionViewModelTests {
    
    func testPerformInitialViewSetup_Calls_SetNavigationTitle_OnCollectionViewController() {
//        let expectation = self.expectation(description: "expected setNavigationTitle() to be called")
//        mockCollectionViewController!.expectationForSetNavigationTitle = expectation
//
//        let viewModel = CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.performInitialViewSetup()
//
//        self.waitForExpectations(timeout: 1.0, handler: nil)

    }
    
    func testPerformInitialViewSetup_Calls_SetSectionInset_OnCollectionViewController() {
//        let expectation = self.expectation(description: "expected setSectionInset() to be called")
//        mockCollectionViewController!.expectationForSetSectionInset = expectation
//
//        let viewModel = CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.performInitialViewSetup()
//
//        self.waitForExpectations(timeout: 1.0, handler: nil)

    }
    
    func testPerformInitialViewSetup_Calls_SetupCollectionViewCellToUseMaxWidth_OnCollectionViewController() {
//        let expectation = self.expectation(description: "expected setupCollectionViewCellToUseMaxWidth() to be called")
//        mockCollectionViewController!.expectationForSetupCollectionViewCellToUseMaxWidth = expectation
//
//        let viewModel = CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.performInitialViewSetup()
//
//        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
}

// MARK: numberOfSections  tests
extension CollectionViewModelTests {
    
    func testNumberOfSections_ValidViewModelWithAlbum_ReturnsNumberOfCitiesInAlbum() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        XCTAssertEqual(viewModel.numberOfSections(), viewModel.recipeBook!.categories!.count)
    }
    
    func testNumberOfSections_ValidViewModelNilAlbum_ReturnsZero() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook = nil
//
//        XCTAssertEqual(viewModel.numberOfSections(), 0)
    }
}

// MARK: numberOfItemsInSection tests
extension CollectionViewModelTests {
    
    func testNumberOfItemsInSection_ValidViewModelNilAlbum_ReturnsZero() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook = nil
//
//        XCTAssertEqual(viewModel.numberOfItemsInSection(0), 0)
    }
    
    func testNumberOfItemsInSection_ValidViewModelNilCities_ReturnsZero() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook!.categories = nil
//
//        XCTAssertEqual(viewModel.numberOfItemsInSection(0), 0)
    }
    
    func testNumberOfItemsInSection_NegtiveSectionIndex_ReturnsZero() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertEqual(viewModel.numberOfItemsInSection(-1), 0)
    }
    
    func testNumberOfItemsInSection_OutOfBoundsSectionIndex_ReturnsZero() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertEqual(viewModel.numberOfItemsInSection(1000), 0)
    }
    
    func testNumberOfItemsInSection_ValidSectionIndex_ReturnsExpectedValue() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertEqual(viewModel.numberOfItemsInSection(0), viewModel.recipeBook!.categories![0].recipes!.count)
    }
}

// MARK: cellViewModel tests
extension CollectionViewModelTests {
    
    func testCellViewModel_ValidViewModelNilAlbum_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook = nil
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: 0)))
    }
    
    func testCellViewModel_ValidViewModelNilCities_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook!.categories = nil
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: 0)))
    }
    
    func testCellViewModel_ValidViewModelNilPhotos_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook!.categories![0].recipes = nil
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: 0)))
    }
    
    func testCellViewModel_NegtiveRowIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: -1, section: 0)))
    }
    
    func testCellViewModel_NegtiveSectionIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: -1)))
    }
    
    func testCellViewModel_OutOfBoundsRowIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 1000, section: 0)))
    }
    
    func testCellViewModel_OutOfBoundsSectionIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: 1000)))
    }
    
    func testCellViewModel_ValidSectionIndex_DoesNotReturnNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNotNil(viewModel.cellViewModel(indexPath:IndexPath(row: 0, section: 0)))
    }
    
    func testCellViewModel_ValidSectionIndex_ReturnsViewModelWithExpectedModelObject() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        let rowIndex = 0
//        let sectionIndex = 0
//
//        let cellViewModel = viewModel.cellViewModel(indexPath:IndexPath(row: rowIndex, section: sectionIndex))
//
//        let expectedModelObject = viewModel.recipeBook!.categories![sectionIndex].recipes![rowIndex]
//
//        XCTAssertEqual(cellViewModel!.recipe, expectedModelObject)
    }
}

// MARK: headerViewModel tests
extension CollectionViewModelTests {
    
    func testHeaderViewModel_ValidViewModelNilRecipeBook_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook = nil
//
//        XCTAssertNil(viewModel.headerViewModel(indexPath: IndexPath(row: 0, section: 0)))
    }
    
    func testHeaderViewModel_ValidViewModelNilCategories_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        viewModel.recipeBook!.categories = nil
//
//        XCTAssertNil(viewModel.headerViewModel(indexPath: IndexPath(row: 0, section: 0)))
    }
    
    func testHeaderViewModel_NegativeSectionIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.headerViewModel(indexPath: IndexPath(row: 0, section: -1)))
    }
    
    func testHeaderViewModel_OutOfBoundsSectionIndex_ReturnsNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNil(viewModel.headerViewModel(indexPath: IndexPath(row: 0, section: 1000)))
    }
    
    func testHeaderViewModel_ValidSectionIndex_DoesNotReturnNil() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//
//        XCTAssertNotNil(viewModel.headerViewModel(indexPath: IndexPath(row: 0, section: 0)))
    }
    
    func testHeaderViewModel_ValidSectionIndex_ReturnsViewModelWithExpectedSectionTitle() {
//        let viewModel =  CollectionViewModel(view: mockCollectionViewController!)
//        
//        let rowIndex = 0
//        let sectionIndex = 0
//        
//        let headerViewModel = viewModel.headerViewModel(indexPath: IndexPath(row: rowIndex, section: sectionIndex))
//        
//        let expectedSectionTitle = viewModel.recipeBook!.categories![sectionIndex].title
//        
//        XCTAssertEqual(headerViewModel!.sectionTitle, expectedSectionTitle)
        
    }
    
}
