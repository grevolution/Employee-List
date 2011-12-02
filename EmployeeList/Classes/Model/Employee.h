//
//  Employee.h
//  EmployeeList
//
//  Created by Shan Ul Haq on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    NSString *name_;
    NSString *jobTitle_;
    NSString *dob_;
    int yearsEmployed_;
    
    NSString *imagePath_;
    
}

@property(nonatomic, readonly) NSString *name;
@property(nonatomic, readonly) NSString *jobTitle;
@property(nonatomic, readonly) NSString *dob;
@property(nonatomic, readonly) int yearsEmployed;
@property(nonatomic, readonly) NSString *imagePath;

- (id)initWithDictionary:(NSDictionary*)params;

@end
