//
//  ViewController.swift
//  FJInfiniteScroll_CS
//
//  Created by Francis on 16/3/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

import UIKit


class ViewController: UIViewController{


    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        /*
        
        //默认显示中间的cell
        [collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:FJItemCount / 2 inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
        */
        
        
    }


    override func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
           
            return FJItemCount
            
    }
    
    /*
    -(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return FJItemCount;
    }
    -(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    FJImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:FJImageCellID forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img_0%zd",indexPath.item % 5]];
    
    NSLog(@"%zd",indexPath.item);
    
    return cell;
    }
    
    #pragma mark - <UICollectionViewDelegate>
    -(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    NSInteger index = scrollView.contentOffset.x / scrollView.frame.size.width;
    
    NSInteger item = (FJItemCount / 2) + (index % 5);
    //设置collectionView无限滚动
    [(UICollectionView *)scrollView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:item inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
    
    }

    */
    

}

