//
//  Photo.m
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithPhoto:(UIImage *)photo location:(NSString *)location andSubject:(NSString *)subject
{
    self = [super init];
    if (self) {
        
        _photo = photo;
        _location = location;
        _subject = subject;
    }
    return self;
}


@end
