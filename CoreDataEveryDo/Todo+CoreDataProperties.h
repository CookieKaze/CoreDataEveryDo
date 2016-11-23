//
//  Todo+CoreDataProperties.h
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Todo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Todo (CoreDataProperties)

+ (NSFetchRequest<Todo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;
@property (nonatomic) BOOL complete;
@property (nonatomic) int32_t priority;

@end

NS_ASSUME_NONNULL_END
