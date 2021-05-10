//
//  CollectionViewCell.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var cellDetailsLabel: UILabel!
    
}

/*
class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var cellDetailsLabel: UILabel!
    
    var viewModel: CollectionViewCellViewModel?
    
    func setup() {
        viewModel?.setup()
    }
}

extension CollectionViewCell: CollectionViewCellProtocol {
    func loadImage(resourceName: String) {
        imageView.image = UIImage(named: resourceName)
    }
    
    func setCaption(captionText: String) {
        captionLabel.text = captionText
    }
    
    func setRecipeDetails(recipeDetailsText: String) {
        cellDetailsLabel.text = recipeDetailsText
    }
}
*/
