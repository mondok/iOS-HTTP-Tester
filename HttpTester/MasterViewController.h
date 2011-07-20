//
//  MasterViewController.h
//  HttpTester
//
//  Created by user1 on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate>
{
    NSArray *verbs;
    NSString *selectedVerb;
    
}

@property(nonatomic, retain) IBOutlet UITextField *urlText;

@property(nonatomic, retain) IBOutlet UITextView *bodyText;

-(IBAction)issueRequest:(id)sender;

@end
