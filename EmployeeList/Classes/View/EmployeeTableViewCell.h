//
//  EmployeeTableViewCell.h
//  EmployeeList
//
//  Created by Shan Ul Haq on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Employee;

@interface EmployeeTableViewCell : UITableViewCell
{
    Employee *employee_;
    
    IBOutlet UILabel *lblName_;
    IBOutlet UILabel *lblJobTitle_;
    IBOutlet UILabel *lblEmployedFor_;
    IBOutlet UILabel *lblDob_;
    
    IBOutlet UIImageView *imgThumb_;
}

- (void)updateEmployeeData:(Employee*)employee;

@end
