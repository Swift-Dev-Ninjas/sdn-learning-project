//
//  CollectionViewSectionHeader.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import UIKit

class CollectionViewSectionHeader: UICollectionReusableView {
    @IBOutlet weak var title: UILabel!
    
    var viewModel: CollectionViewSectionHeaderViewModel?
    
    func setup() {
        viewModel?.setup()
    }
}

extension CollectionViewSectionHeader: CollectionViewSectionHeaderProtocol {
    func setHeaderText(text: String) {
        title.text = text
    }
}
