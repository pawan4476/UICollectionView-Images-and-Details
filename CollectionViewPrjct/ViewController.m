//
//  ViewController.m
//  CollectionViewPrjct
//
//  Created by Nagam Pawan on 9/15/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    pics = [[NSArray alloc]initWithObjects:@"2_ZNPTLxwV.jpg", @"absnature_XEnZpCW8.jpg", @"abstract_wn1QW4oj.jpg", @"alone-_3613468_jpeg.jpg", @"car_F4PnIlUZ.jpg", @"classiccou_qHRtcBnf.jpg", @"cutekitty_d3g0QsBF.jpg", @"cutelittle_U5xFGaqg.jpg", @"familyofpa_pIQhIigq.jpg", @"Honda P-NUT Concept.jpg", @"liplove_99zk4d8h.jpg", @"tulips_xFhhDQ9x.jpg", nil];
    names = [[NSArray alloc]initWithObjects:@"Apple", @"Moon and Roses", @"Abstract", @"Alone", @"Car", @"Romantic couple", @"Cute Kitty", @"Cute Little Kitty", @"Parrots Family", @"Honda", @"Lip Love", @"Tulips", nil];
    type = [[NSArray alloc]initWithObjects:@"Red Apple", @"Full Moon with Roses", @"Water droplets", @"Cute quote", @"Ferari", @"Seashore Love", @"Kitty in a grass", @"Kitty in water", @"Beautiful Family", @"Honda Nut", @"Beautiful lips", @"Flowers", nil];
    color = [[NSArray alloc]initWithObjects:@"Red", @"Red Roses", @"Droplets on a glass", @"Leaf", @"King of the roads", @"Beautiful moon", @"Green grass", @"Cuteness", @"Its called family", @"Ghost Rider", @"Pink lips", @"Yellow and Green", nil];
    rating = [[NSArray alloc]initWithObjects:@"8/10", @"9/10", @"6/10", @"7/10", @"10/10", @"10/10", @"8/10", @"9/10", @"10/10", @"10/10", @"9/10", @"5/10", nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return pics.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.img.image = [UIImage imageNamed:[pics objectAtIndex:indexPath.row]];
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:50];
    recipeImageView.image = [UIImage imageNamed:[pics objectAtIndex:indexPath.row]];
    
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableString *str = [[NSMutableString alloc]init];
    [str appendString:names[indexPath.item]];
    _lb.text = str;
    NSMutableString *str1 = [[NSMutableString alloc]init];
    [str1 appendString:pics[indexPath.item]];
    [str1 appendString:@"\n"];
    [str1 appendString:type[indexPath.item]];
    [str1 appendString:@"\n"];
    [str1 appendString:color[indexPath.item]];
    [str1 appendString:@"\n"];
    [str1 appendString:rating[indexPath.item]];
    _text.text = str1;
    
}


@end
