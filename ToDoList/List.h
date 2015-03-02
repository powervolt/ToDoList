//
//  List.h
//  ToDoList
//
//  Created by Budhathoki,Bipin on 1/27/15.
//  Copyright (c) 2015 Budhathoki,Bipin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Task;

@interface List : NSObject

@property(nonatomic,strong) NSMutableArray *listArray;

+(instancetype)sharedInstance;
-(void)addTask:(Task *) task;
-(void)deleteTaskAtIndex:(NSUInteger)index;
-(NSArray*)getAllNotes;
-(Task *)taskAtIndex:(NSUInteger)index;
-(void)saveTask:(Task *)task atIndex:(NSUInteger)index;

@end
