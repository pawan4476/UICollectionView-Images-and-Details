//
//  ViewController.h
//  CollectionViewPrjct
//
//  Created by Nagam Pawan on 9/15/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>{
    NSArray *pics;
    NSArray *names;
    NSArray *type;
    NSArray *color;
    NSArray *rating;
}
@property (strong, nonatomic) IBOutlet UITextView *text;
@property (strong, nonatomic) IBOutlet UILabel *lb;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@end

