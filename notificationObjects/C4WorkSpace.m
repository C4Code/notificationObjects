//
//  C4WorkSpace.m
//  notificationObjects
//
//  Created by Travis Kirton on 12-05-11.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
#import "MyObject.h"

@interface C4WorkSpace ()
-(void)triggerTheObject:(NSNotification *)aNotification;
@end

@implementation C4WorkSpace

-(void)setup {
    MyObject *m = [MyObject new];
    [m ellipse:CGRectMake(100,100, 100, 100)];
    [self.canvas addShape:m];
    
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(triggerTheObject:) 
                                                 name:@"imReadyToTrigger" 
                                               object:nil];
}

-(void)triggerTheObject:(NSNotification *)aNotification {
    [(MyObject *)[aNotification object] trigger];
    
    CGPoint p = ((MyObject *)[aNotification object]).origin;
    C4Log(@"(%4.2f,%4.2f)",p.x,p.y);
}
@end
