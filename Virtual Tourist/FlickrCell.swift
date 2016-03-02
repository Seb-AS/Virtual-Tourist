//
//  FlickrCell.swift
//  Virtual Tourist
//
//  Created by Sebas on 3/1/16.
//  Copyright © 2016 Sebas Mas. All rights reserved.
//

import UIKit

class FlickrCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func prepareForReuse() {
        
        super.prepareForReuse()
        
        if imageView.image == nil {
            activityIndicator.hidden = false
            activityIndicator.startAnimating()
        }
    }

}
