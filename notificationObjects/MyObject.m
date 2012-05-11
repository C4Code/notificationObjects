//
//  MyObject.m
//  notificationObjects
//
//  Created by Travis Kirton on 12-05-11.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject
-(id)init {
    self =[super init];
     if(self != nil) {
         [self performSelector:@selector(notify) withObject:nil afterDelay:1.0f];
     }
     return self;
}

-(void)notify {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"imReadyToTrigger" object:self];
}
     
-(void)trigger {
    self.fillColor = C4GREY;
}
@end
