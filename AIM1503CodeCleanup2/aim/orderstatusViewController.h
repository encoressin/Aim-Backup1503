//
//  orderstatusViewController.h
//  aim
//  Description - check the order status by entering order or member details 
//  Created by encore on 11/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface orderstatusViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate>
{
    //variable declaration
    IBOutlet UITextField *txtHealthPlan;
    IBOutlet UITextField *txtSearchType;
    IBOutlet UITextField *txtOrderId;
    IBOutlet UIView      *viewMemberId;
    
    IBOutlet UIImageView *imgHeader;
    IBOutlet UIImageView *imgFooter;
    IBOutlet UIImageView *imgConeArea;
    IBOutlet UIImageView *imgInnerBg;
    IBOutlet UIImageView *imgBackground;
    
    IBOutlet UILabel *lblHeader;
    IBOutlet UILabel *lblSelectHealth;
    IBOutlet UILabel *lblSelectSearch;
    IBOutlet UILabel *lblOrderId;
    IBOutlet UILabel *lblSearchType;
    IBOutlet UIButton *btnFindOrder;
    
    IBOutlet UIImageView *imgSelectHealthLeft;
    IBOutlet UIImageView *imgSelectSearchLeft;
    IBOutlet UIImageView *imgSelectOrderIdLeft;
    IBOutlet UIImageView *imgSelectOrderIdRight;
    IBOutlet UIButton *btnSelectHealthRight;
    
    IBOutlet UIButton *btnSelectSearchRight;
    IBOutlet UIImageView *imgCheckOrder;
    IBOutlet UIImageView *imgAimLogo;
    IBOutlet UIImageView *imgMobilePortal;
    
    IBOutlet UIButton *btnHome;
    IBOutlet UIButton *btnLogout;

    IBOutlet UITableView *tblview1;
    IBOutlet UIImageView *tblimgbg;
    IBOutlet UITableView*tblview2;
    IBOutlet UIImageView*tblimgbg2;
    
    IBOutlet UIScrollView *scrollview;
    // Two or Three Items Below Member Name Variables
    IBOutlet UILabel *lblEnterTwoMember;
    IBOutlet UITextField *txtMembernumber;
    IBOutlet UIImageView *imgMembernumberLeft;
    IBOutlet UIImageView *imgMembernumberRight;
    
    //  Member Search Criteria And Member Name Variables
    IBOutlet UILabel *lblEnterCriteriaMemberName;
    IBOutlet UITextField *txtFirstName ;
    IBOutlet UIImageView *imgFirstNameLeft;
    IBOutlet UIImageView *imgFirstNameRight; 
    IBOutlet UITextField *txtLastName ;
    IBOutlet UIImageView *imgLastNameLeft;
    IBOutlet UIImageView *imgLastNameRight;
    
    // Date of Birth Variables
    IBOutlet UILabel *lblDOB;
    IBOutlet UITextField *txtDOB;
    IBOutlet UIImageView *imgDOBLeft;
    IBOutlet UIImageView *imgDOBRight;    
   
    NSMutableArray *arr_memplan;
    NSMutableArray *arr_healthplan;
    
    IBOutlet UIDatePicker *date_Picker;
    IBOutlet UIView *view_datePicker;
    IBOutlet UIButton *btnDob;
    
    IBOutlet UIButton *btnRadioOrder;
    IBOutlet UIButton *btnRadiomember;
    IBOutlet UILabel *lblorderid;
    IBOutlet UILabel *lblmemberid;
    NSString *str_SearchType;
    
}
//set property
// Text Fields 
@property(nonatomic,retain)IBOutlet UITextField *txtHealthPlan;
@property(nonatomic,retain)IBOutlet UITextField *txtSearchType;
@property(nonatomic,retain)IBOutlet UITextField *txtOrderId;
@property(nonatomic,retain)IBOutlet UIView      *viewMemberId;

// Images
@property(nonatomic,retain)IBOutlet UIImageView *imgHeader;
@property(nonatomic,retain)IBOutlet UIImageView *imgFooter;
@property(nonatomic,retain)IBOutlet UIImageView *imgConeArea;
@property(nonatomic,retain)IBOutlet UIImageView *imgInnerBg;
@property(nonatomic,retain)IBOutlet UIImageView *imgBackground;

//Labels
@property(nonatomic,retain)IBOutlet UILabel *lblmemberid;
@property(nonatomic,retain)IBOutlet UILabel *lblorderid;
@property(nonatomic,retain)IBOutlet UILabel *lblHeader;
@property(nonatomic,retain)IBOutlet UILabel *lblSelectHealth;
@property(nonatomic,retain)IBOutlet UILabel *lblSelectSearch;

@property(nonatomic,retain)IBOutlet UILabel *lblOrderId;
@property(nonatomic,retain) IBOutlet UILabel *lblSearchType;
@property(nonatomic,retain)IBOutlet UIButton *btnFindOrder;
@property(nonatomic,retain)IBOutlet UIImageView *imgSelectHealthLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgSelectSearchLeft;

@property(nonatomic,retain)IBOutlet UIImageView *imgSelectOrderIdLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgSelectOrderIdRight;
@property(nonatomic,retain)IBOutlet UIButton *btnSelectHealthRight;
@property(nonatomic,retain)IBOutlet UIButton *btnSelectSearchRight;
@property(nonatomic,retain)IBOutlet  UIImageView *imgCheckOrder;

@property(nonatomic,retain)IBOutlet UIImageView *imgAimLogo;
@property(nonatomic,retain)IBOutlet UIImageView *imgMobilePortal;
@property(nonatomic,retain)IBOutlet UIButton *btnHome;
@property(nonatomic,retain)IBOutlet UIButton *btnLogout;
@property(nonatomic,retain)IBOutlet UITableView *tblview1;

@property (nonatomic,retain)  IBOutlet UIImageView *tblimgbg;
@property(nonatomic,retain)IBOutlet UITableView *tblview2;
@property (nonatomic,retain)  IBOutlet UIImageView *tblimgbg2;
@property(nonatomic,retain)IBOutlet UIScrollView *scrollview;

@property(nonatomic,retain) IBOutlet UILabel *lblEnterTwoMember;
@property(nonatomic,retain) IBOutlet UITextField *txtMembernumber;
@property(nonatomic,retain)IBOutlet UIImageView *imgMembernumberLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgMembernumberRight;

@property(nonatomic,retain) IBOutlet UILabel *lblEnterCriteriaMemberName;
@property(nonatomic,retain) IBOutlet UITextField *txtFirstName ;
@property(nonatomic,retain)IBOutlet UIImageView *imgFirstNameLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgFirstNameRight;
@property(nonatomic,retain)IBOutlet UITextField *txtLastName ;
@property(nonatomic,retain)IBOutlet UIImageView *imgLastNameLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgLastNameRight;

@property(nonatomic,retain) IBOutlet UILabel *lblDOB;
@property(nonatomic,retain) IBOutlet UITextField *txtDOB;
@property(nonatomic,retain)IBOutlet UIImageView *imgDOBLeft;
@property(nonatomic,retain)IBOutlet UIImageView *imgDOBRight;

@property(nonatomic,retain)IBOutlet UIDatePicker *date_Picker;
@property(nonatomic,retain)IBOutlet UIView *view_datePicker;
@property(nonatomic,retain)IBOutlet UIButton *btnDob;

@property(nonatomic,retain)IBOutlet UIButton *btnRadioOrder;
@property(nonatomic,retain)IBOutlet UIButton *btnRadiomember;
@property(nonatomic,retain)NSString *str_SearchType;

//method declaration
- (IBAction)metMainMenu:(id)sender;
- (IBAction)metLogout:(id)sender;
- (IBAction)showTable:(id)sender;
- (IBAction)metOrderInfo:(id)sender;
- (IBAction)showselectmembertype:(id)sender;

- (IBAction)metDob:(id)sender;
- (void)resizeiphone_land; 
- (void)resizeiphone_port; 
- (void)resizeipad_land; 
- (void)resizeipad_port;

- (BOOL)check;
- (void)resizeiphone5_land;
- (void)resizeiphone5_port;

//date picker
- (IBAction)actionCancel:(id)sender;
- (IBAction)actionDone:(id)sender;
- (IBAction)actiondatepicker:(id)sender;
- (IBAction)metDateClear:(id)sender;

//radio button
-(IBAction)actioncheck:(id)sender;

@end
