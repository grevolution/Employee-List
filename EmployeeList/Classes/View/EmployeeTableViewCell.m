//
//  EmployeeTableViewCell.m
//  EmployeeList
//
//  Created by Shan Ul Haq on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EmployeeTableViewCell.h"
#import "Employee.h"

@implementation EmployeeTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateEmployeeData:(Employee*)employee
{
    if(employee_ != employee)
    {
        [employee_ release], employee_ = nil;
        employee_ = [employee retain];
    }
    
    [lblName_ setText:[employee_ name]];
    [lblJobTitle_ setText:[employee_ jobTitle]];
    [lblDob_ setText:[NSString stringWithFormat:@"Born %@", [employee_ dob]]];
    [lblEmployedFor_ setText:[NSString stringWithFormat:@"Working for %i years", [employee_ yearsEmployed]]];
    
    [imgThumb_ setImage:[UIImage imageNamed:[employee_ imagePath]]];
}

- (void)dealloc
{
    [employee_ release], employee_ = nil;
    [super dealloc];
}

@end
