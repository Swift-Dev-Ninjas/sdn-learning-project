//
//  CollectionViewSectionHeaderViewModel.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 10.05.21.
//

import Foundation

class CollectionViewSectionHeaderViewModel {
    
    var collectionViewSectionHeader: CollectionViewSectionHeaderProtocol?
    
    var sectionTitle: String?
    
    init?(model: String?) {
        guard let model = model else { return nil }
        self.sectionTitle = model
    }
    
    func setup() {
        
        guard let collectionViewSectionHeader = collectionViewSectionHeader ,
            let sectionTitle = sectionTitle else {
                return
        }
        
        collectionViewSectionHeader.setHeaderText(text: sectionTitle)
    }
}
