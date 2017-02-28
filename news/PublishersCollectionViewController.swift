//
//  PublishersCollectionViewController.swift
//  News
//
//  Created by Duc Tran on 7/25/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class PublishersCollectionViewController: UICollectionViewController
{
    
    // data source
    let publishers = Publishers()
    
    fileprivate let leftAndRightPaddings: CGFloat = 32.0
    fileprivate let numberOfItemsPerRow: CGFloat = 3.0
    fileprivate let heigthAdjustment: CGFloat = 30.0
    
    // MARK: - View controller life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = (collectionView!.frame.width - leftAndRightPaddings) / numberOfItemsPerRow
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width + heigthAdjustment)
        
    }
    
    // MARK: - UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return publishers.numberOfPublishers
    }
    
    fileprivate struct Storyboard
    {
        static let CellIdentifier = "PublisherCell"
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.CellIdentifier, for: indexPath) as! PublisherCollectionViewCell
        
        cell.publisher = publishers.publisherForItemAtIndexPath(indexPath)
        
        return cell
    }
    
}

























