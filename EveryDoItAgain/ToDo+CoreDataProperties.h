//
//  ToDo+CoreDataProperties.h
//  EveryDoItAgain
//
//  Created by Sofia Knezevic on 2017-03-01.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ToDo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

+ (NSFetchRequest<ToDo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;
@property (nonatomic) int16_t priorityNumber;
@property (nullable, nonatomic, copy) NSString *toDoDescription;
@property (nonatomic) BOOL isCompleted;

@end

NS_ASSUME_NONNULL_END
