//
//  memberSearchResult.h
//  aim
//  Description - member details search result page.
//  Created by Encore on 07/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface memberSearchResult : UIViewController<UITableViewDelegate>
{
    //variable declaration
    IBOutlet UITableView *tblMember;
    IBOutlet UIScrollView *scrlMember;
    //member table
    NSMutableArray *arrMemberName;
    NSMutableArray *arrMemberNumber;
    NSMutableArray *arrSex;
    NSMutableArray *arrDob;
    NSMutableArray *arrProduct;
    
    NSMutableArray *arrEffectiveDate;
    NSMutableArray *arrTermDate;
    NSMutableArray *arrState;
    NSMutableArray *arrHealthPlan;
    //order table
    
    NSMutableArray *arrOrderId;
    NSMutableArray *arrOrderMemberName;
    NSMutableArray *arrOrderMemberNumber;
    NSMutableArray *arrDos;
    NSMutableArray *arrOrderingProvider;
    NSMutableArray *arrExpiresIn;
    
    NSInteger selectedIndex;
    NSString *Str_selected;
    NSString *currentTable;
    
    //controls
    IBOutlet UIImageView *imgBg;
    IBOutlet UIImageView *imgHeader;
    IBOutlet UIImageView *imgFooter;
    IBOutlet UIImageView *imgInnerBg;
    IBOutlet UILabel *lblHeader;
    
    IBOutlet UIImageView *imgAimLogo;
    IBOutlet UIImageView *imgMobilePortal;
    IBOutlet UIButton *btnBack;
    IBOutlet UIButton *btnLogout;
    IBOutlet UILabel *lblTableCaption;
    IBOutlet UIImageView *imgTableBg;
    
}
//set property
@property(nonatomic,retain)IBOutlet UITableView *tblMember;
@property(nonatomic,retain)IBOutlet UIScrollView *scrlMember;
@property(nonatomic,retain)NSString *currentTable;
@property(nonatomic,retain)NSString *Str_selected;

@property(nonatomic,retain)IBOutlet UIImageView *imgBg;
@property(nonatomic,retain)IBOutlet UIImageView *imgHeader;
@property(nonatomic,retain)IBOutlet UIImageView *imgFooter;
@property(nonatomic,retain)IBOutlet UIImageView *imgInnerBg;
@property(nonatomic,retain)IBOutlet UILabel *lblHeader;

@property(nonatomic,retain)IBOutlet UIImageView *imgAimLogo;
@property(nonatomic,retain)IBOutlet UIImageView *imgMobilePortal;
@property(nonatomic,retain)IBOutlet UIButton *btnBack;
@property(nonatomic,retain)IBOutlet UIButton *btnLogout;
@property(nonatomic,retain)IBOutlet UILabel *lblTableCaption;
@property(nonatomic,retain)IBOutlet UIImageView *imgTableBg;

//method declaration
-(void)resizeiphone_land; 
-(void)resizeiphone_port;
-(void)resizeipad_land;   
-(void)resizeipad_port;
-(IBAction)metLogout:(id)sender;
-(IBAction) checkOrderStatus:(id)sender;

@end
