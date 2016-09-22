//
//  PhotoCollection.m
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "PhotoCollection.h"

@implementation PhotoCollection

- (instancetype)init
    {
    self = [super init];
    if (self) {
        
        _photosArray = [self generatePhotosArray];

    }
    return self;
}

- (NSMutableArray *) generatePhotosArray {
    
    
    Photo* photo1 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"capetown.png"] location:@"South Africa" andSubject:@"Travel"];
    Photo* photo2 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"hands.png"] location:@"Unknown" andSubject:@"Photography"];
    Photo* photo3 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"me.png"] location:@"BC" andSubject:@"Portrait"];
    Photo* photo4 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"puppy.png"] location:@"The Beach" andSubject:@"Animals"];
    Photo* photo5 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"puppy2.png"] location:@"Unknown" andSubject:@"Animals"];
    Photo* photo6 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"sloth"] location:@"Unknown" andSubject:@"Animals"];
    Photo* photo7 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"water"] location:@"The Beach" andSubject:@"Water"];
    Photo* photo8 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"water2"] location:@"Unknown" andSubject:@"Water"];
    Photo* photo9 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"boats"] location:@"Unknown" andSubject:@"Water"];
    Photo* photo10 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"hawaii.png"] location:@"Hawaii" andSubject:@"Travel"];
    Photo* photo11 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"dog.png"] location:@"BC" andSubject:@"Animals"];
    Photo* photo12 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"donkey.png"] location:@"Ethiopia" andSubject:@"Animals"];
    Photo* photo13 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"flower.jpg"] location:@"BC" andSubject:@"Plants"];
    Photo* photo14 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"horse.png"] location:@"Iceland" andSubject:@"Animals"];
    Photo* photo15 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"sloth2.png"] location:@"Panama" andSubject:@"Animals"];
    Photo* photo16 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"vineyard.png"] location:@"BC" andSubject:@"Plants"];
    Photo* photo17 = [[Photo alloc] initWithPhoto:[UIImage imageNamed:@"swing.png"] location:@"BC" andSubject:@"Portrait"];
    return [[NSMutableArray alloc] initWithObjects:
     photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10, photo11, photo12, photo13, photo14, photo15, photo16, photo17, nil];
    

//    return [[NSMutableArray alloc] initWithObjects:photo1, nil];
    
}

@end
