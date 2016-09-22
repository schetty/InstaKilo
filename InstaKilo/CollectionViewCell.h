//
//  CollectionViewCell.h
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCollection.h"


@interface CollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) PhotoCollection *photoCollection;


@end
