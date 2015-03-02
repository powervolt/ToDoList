//
//  List.m
//  ToDoList
//
//  Created by Budhathoki,Bipin on 1/27/15.
//  Copyright (c) 2015 Budhathoki,Bipin. All rights reserved.
//

#import "List.h"
#import "Task.h"

@implementation List

static List *list;

+(instancetype)sharedInstance{
    if(list == nil){
        list = [[List alloc] init];
        list.listArray = [[NSMutableArray alloc] init];
    }
    
    return list;
}


-(NSArray*)getAllNotes{
    
    return [list.listArray copy];
}

-(Task *)taskAtIndex:(NSUInteger)index {
    return (Task *)[list.listArray objectAtIndex:index];
    
}

-(void)addTask:(Task *) task{
    [list.listArray addObject:task];
}

-(void)deleteTaskAtIndex:(NSUInteger)index{
    [list.listArray removeObjectAtIndex:index];
}

-(void)saveTask:(Task *)newTask atIndex:(NSUInteger)index{
    Task *task = [self taskAtIndex:index];
    task.taskString = newTask.taskString;
    task.reviewed = newTask.reviewed;
}


@end