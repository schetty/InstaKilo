//
//  Photo.h
//  InstaKilo
//
//  Created by naomi schettini on 2016-09-21.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Photo : NSObject

@property NSString * location;
@property NSString * subject;
@property UIImage * photo;

-(instancetype) initWithPhoto:(UIImage *)photo location:(NSString *)location andSubject:(NSString *)subject;
@end
