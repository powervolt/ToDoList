//
//  Task.h
//  ToDoList
//
//  Created by Budhathoki,Bipin on 1/27/15.
//  Copyright (c) 2015 Budhathoki,Bipin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property(nonatomic,copy) NSString *taskString;
@property(nonatomic) BOOL reviewed;

@end
