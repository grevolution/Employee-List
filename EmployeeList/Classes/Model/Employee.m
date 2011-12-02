//
//  Employee.m
//  EmployeeList
//
//  Created by Shan Ul Haq on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize name = name_;
@synthesize jobTitle = jobTitle_;
@synthesize dob = dob_;
@synthesize yearsEmployed = yearsEmployed_;
@synthesize imagePath = imagePath_;

- (id)initWithDictionary:(NSDictionary*)params
{
    if((self = [super init]))
    {
        //initialization code.
        NSDictionary *params_ = [params copy];        
        name_ = [[params_ objectForKey:@"name"] copy];
        jobTitle_ = [[params_ objectForKey:@"jobtitle"] copy];
        dob_ = [[params_ objectForKey:@"dob"] copy];
        yearsEmployed_ = [[params objectForKey:@"yearsofemployement"] intValue];
        imagePath_ = [[params objectForKey:@"image"] copy];
        [params_ release];
    }
    return self;
}

+ (Employee*)employeeWithDictionary:(NSDictionary*)params
{
    if(nil==params)
    {
        return nil;
    }
    return [[[Employee alloc] initWithDictionary:params] autorelease];
}

- (void)dealloc
{
    [name_ release], name_ = nil;
    [jobTitle_ release], jobTitle_ = nil;
    [dob_ release], dob_ = nil;
    [imagePath_ release], imagePath_ = nil;
    [super dealloc];
}

@end
