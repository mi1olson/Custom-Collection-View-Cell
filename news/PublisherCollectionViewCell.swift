//
//  PublisherCollectionViewCell.swift
//  News
//
//  Created by Duc Tran on 7/25/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class PublisherCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var publisherImageView: UIImageView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var publisherTitleLabel: UILabel!
    
    var publisher: Publisher? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI()
    {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 3.0
        publisherImageView.image = publisher?.image
        publisherTitleLabel.text = publisher?.title
    }
    
    
}































