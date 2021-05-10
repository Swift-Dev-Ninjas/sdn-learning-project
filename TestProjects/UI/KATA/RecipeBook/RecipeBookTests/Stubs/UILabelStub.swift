//
//  UILabelStub.swift
//  PhotoBookTests
//
//  Created by Christian Slanzi on 11.02.21.
//

import UIKit

class UILabelStub: UILabel {

    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
