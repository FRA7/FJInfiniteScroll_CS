//
//  FJInfiniteCollectionViewController.swift
//  FJInfiniteScroll_CS
//
//  Created by Francis on 16/3/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

import UIKit

private let FJItemCount = 200
private let FJImageCellID = "FJImageCellID"

class FJInfiniteCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.minimumLineSpacing = 0
        
        //UICollectionView
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200), collectionViewLayout: layout)
                collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.pagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        view.addSubview(collectionView)
        
        layout.itemSize = collectionView.frame.size
        
        //注册cell
        collectionView.registerNib(UINib(nibName: "FJImageView", bundle: nil), forCellWithReuseIdentifier: FJImageCellID)
        
        //中间cell居中显示

//        collectionView.scrollToItemAtIndexPath(100, atScrollPosition: UICollectionViewScrollPosition.None, animated: false)
    }

   

    // MARK: UICollectionViewDataSource



    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return FJItemCount
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(FJImageCellID, forIndexPath: indexPath) as! FJImageView
    

        cell.imageView.image = UIImage(named: "img_0\(indexPath.item%5)")
    
        print("%zd",indexPath.item)
        
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    override func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
      
        var index: Int = scrollView.contentOffset.x/scrollView.frame.size.width
        var item: Int = (FJItemCount/2)+(index%5)

//
        UICollectionView().scrollToItemAtIndexPath(index,atScrollPosition:UICollectionViewScrollPosition.None, animated:false)
        
        
        /*public func scrollToItemAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)*/
    }
}
