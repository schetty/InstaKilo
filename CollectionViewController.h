//
//  CollectionViewController.h
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UICollectionViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *subjectButton;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *locationButton;

- (IBAction)locationButtonPressed:(UIBarButtonItem *)sender;

- (IBAction)subjectButtonPressed:(UIBarButtonItem *)sender;

@end
