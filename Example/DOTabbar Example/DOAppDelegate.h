//
//  DOAppDelegate.h
//  DOTabbar Example
//
//  Created by Dmitry Obukhov on 31.03.13.
//  Copyright (c) 2013 Dmitry Obukhov. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DOTabbar.h"

@interface DOAppDelegate : NSObject <NSApplicationDelegate, DOTabbarDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet DOTabbar *tabbar;

@end

