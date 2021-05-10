//
//  CollectionViewController.swift
//  RecipeBook
//
//  Created by Christian Slanzi on 09.05.21.
//

import UIKit

private let cellReuseIdentifier = "CollectionViewCell"
private let headerReuseIdentifier = "CollectionViewSectionHeader"

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

/*
class CollectionViewController: UICollectionViewController {
    
    var viewModel: CollectionViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ///
        if self.viewModel == nil {
            self.viewModel = CollectionViewModel(view: self)
        }
        
        self.viewModel?.performInitialViewSetup()
        ///
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        //return 2
        
        guard let viewModel = viewModel else {
            return 0
        }
        
        return viewModel.numberOfSections()
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        //return 6
        
        guard let viewModel = viewModel else {
            return 0
        }
        
        return viewModel.numberOfItemsInSection(section)
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath)
        
        //return cell
        
        guard let viewModel = viewModel,
            let collectionViewCell = cell as? CollectionViewCell,
            let cellViewModel = viewModel.cellViewModel(indexPath: indexPath) else {
                return cell
        }
        
        collectionViewCell.viewModel = cellViewModel
        cellViewModel.setView(collectionViewCell)
        
        collectionViewCell.setup()
        return collectionViewCell
    }

    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerReuseIdentifier, for: indexPath)
        
        //return header
        
        guard let viewModel = viewModel,
            let sectionHeader = header as? CollectionViewSectionHeader,
            let sectionHeaderViewModel = viewModel.headerViewModel(indexPath:indexPath) else {
                return header
        }
        
        sectionHeader.viewModel = sectionHeaderViewModel
        sectionHeaderViewModel.setView(sectionHeader)
        
        sectionHeader.setup()
        return sectionHeader
    }

}

extension CollectionViewController : CollectionViewControllerProtocol {
    
    func setNavigationTitle(_ title: String) {
        self.title = title
    }
    
    func setSectionInset(top: Float, left: Float, bottom: Float, right: Float) {
        if let collectionView = self.collectionView,
            let collectionViewLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewLayout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        }
    }
    
    func setupCollectionViewCellToUseMaxWidth() {
        if let collectionView = self.collectionView,
            let collectionViewLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewLayout.itemSize = CGSize(width: collectionView.bounds.width, height: collectionView.bounds.width * 0.6)
        }
    }
}
*/
