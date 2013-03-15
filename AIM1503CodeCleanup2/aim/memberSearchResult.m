//
//  memberSearchResult.m
//  aim
//  Description - member details search result page.
//  Created by Encore on 07/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "memberSearchResult.h"
#import "member_Searchcell.h"
#import "phMemberSearchCell.h"
#import "orderInformation.h"
#import "LoginScreen.h"
#import "orderstatusViewController.h"
#import "orderSearchResult.h"


@interface memberSearchResult ()

@end

@implementation memberSearchResult

@synthesize tblMember,scrlMember;

@synthesize currentTable;
@synthesize Str_selected;

@synthesize imgBg,imgFooter,imgHeader,imgAimLogo,imgInnerBg,
imgTableBg,imgMobilePortal,lblHeader,lblTableCaption,btnBack,btnLogout;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))
        {
            
            [self resizeiphone_land];            
        }
        else
        {
            [self resizeiphone_port];
        }
    }
    else
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation))
        {
            [self resizeipad_land];
        }
        else
        {
            [self resizeipad_port];
        }
    }
}

//iphone4s landscape screen alignments
-(void)resizeiphone_land 
{
    lblTableCaption.frame = CGRectMake(13,74,188,16);
   
    [imgBg setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderbackground.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdercheckfooterbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdermainbg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"iphoneLandMemberSearchTableBg.png"]];
}

//iphone4s portrait screen alignments
-(void)resizeiphone_port
{
     lblTableCaption.frame = CGRectMake(13,77,188,16);
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderfooterbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderbg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"iphonePortMemberSearchTableBg.png"]];

}

// action to show the table cells 
- (IBAction)metShow:(id)sender
{
      
    UIButton *btn=(UIButton *)sender;
        
    if (selectedIndex==btn.tag) 
    {
        self.Str_selected=@"no";
        selectedIndex = -1;
         
    }
    else
    {
        self.Str_selected=@"yes";
        selectedIndex = btn.tag;
        
    }
    [tblMember reloadData];
}

//ipad landscape screen alignments 
-(void)resizeipad_land   
{
     lblTableCaption.frame = CGRectMake(56,170,239,20);
    //set image
    [imgBg setImage:
     [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenfooter-bg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderconareabg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"ipadLandMemberSearchTableBg.png"]];
    
    
}

//ipad portrait screen alignments
-(void)resizeipad_port
{
      lblTableCaption.frame = CGRectMake(55,175,239,20);
    
     [imgBg setImage:
     [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderfooterlogobg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadPortCheckOrdercheckorderbg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"ipadPortMemberSearchTableBg.png"]];
}

// action to move to check order status screen
- (IBAction) checkOrderStatus:(id)sender
{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

// action to move to login screen 
-(IBAction)metLogout:(id)sender
{
    LoginScreen *loginview = [[LoginScreen alloc] init];
      if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPhone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
        
    } else 
        
    {
        
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPad" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
    }
    
}

// actions while view is loaded
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    selectedIndex = -1;
    
    self.currentTable=@"first";
    //member values 
    arrMemberName= [[NSMutableArray alloc] initWithObjects:@"Anderson",@"Micheal",@"Bob Patric",@"Fletcher",@"James",nil];
    arrMemberNumber= [[NSMutableArray alloc] initWithObjects:@"12345",@"23456",@"34567",@"45678",@"56789",nil];
    arrSex= [[NSMutableArray alloc] initWithObjects:@"M",@"M",@"M",@"M",@"M",nil];
    arrDob= [[NSMutableArray alloc] initWithObjects:@"18/07/1989",@"15/02/1980",@"25/02/1975",@"01/01/1999",@"27/02/1990",nil];
    arrProduct= [[NSMutableArray alloc] initWithObjects:@"MRI",@"CT",@"MRI",@"CT",@"MRI",nil];
    arrEffectiveDate= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrTermDate= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrState= [[NSMutableArray alloc] initWithObjects:@"LT",@"LT",@"LT",@"LT",@"LT",nil];
    arrHealthPlan= [[NSMutableArray alloc] initWithObjects:@"BSPLC",@"BSPLC",@"BSPLC",@"BSPLC",@"BSPLC",nil];
    
    //order values
    arrOrderId = [[NSMutableArray alloc] initWithObjects:@"12345",@"12455",@"2514",@"12563",@"225852",nil];
    arrOrderMemberName = [[NSMutableArray alloc] initWithObjects:@"Anderson",@"Micheal",@"Bob Patric",@"Fletcher",@"James",nil];
    arrOrderMemberNumber = [[NSMutableArray alloc] initWithObjects:@"12345",@"23456",@"34567",@"45678",@"56789",nil];
    arrDos= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrOrderingProvider = [[NSMutableArray alloc] initWithObjects:@"AIM",@"AIM",@"AIM",@"AIM",@"AIM",nil];
    arrExpiresIn = [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
            
            [self resizeiphone_land];
            
            
            
        }
        else
        {
            [self resizeiphone_port];
        }
    }
    //iPad
    else
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {  
            [self resizeipad_land]; 
        }
        else
        {
            [self resizeipad_port];
        }
    }
    
    
}

//screen rotation
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) )
        {
            
            [self resizeiphone_port];
            
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) )
        {
            
            [self resizeiphone_land];
            
        }
        
    }
    //iPad
    else 
    {
        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) )
        {
            
            [self resizeipad_port];
            
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) ){
            
           [self resizeipad_land];
            
        }
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{  
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
        
    orderSearchResult *orderInfo = [[orderSearchResult alloc]init];
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
        
    }
    //iPad
    else
        
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
    }
    
    [tableView reloadData];
    
       
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{    
    static NSString *My_identifier=@"Member";
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        
        phMemberSearchCell *cell=(phMemberSearchCell *)[tableView dequeueReusableCellWithIdentifier:My_identifier];
    
        
        if (cell==nil) 
        {
            
            NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"phMemberSearchCell" owner:self options:nil];
            cell=[topLevelObjects objectAtIndex:0];
                        
            
        }
        cell.btnArrow.tag=indexPath.row;
        
        if([Str_selected isEqualToString:@"yes"])
        {
            if (selectedIndex==indexPath.row) 
            {
                
                [cell.cellView setHidden:NO]; 
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchdownarrowiphone2.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
                
                
                
            }
            else
            {
                [cell.cellView setHidden:YES];
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchrightarrowiphone2.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
            }
            

        }
        else
        {
            [cell.cellView setHidden:YES];        

        }
        
        cell.lblMemberName.text=[NSString stringWithFormat:@"%@",[arrMemberName                                                                  objectAtIndex:indexPath.row]];
        cell.lblMemberNumber.text=[NSString stringWithFormat:@"%@",[arrMemberNumber                                                                  objectAtIndex:indexPath.row]];
        
        cell.lblDob.text=[NSString stringWithFormat:@"%@",[arrDob                                                                  objectAtIndex:indexPath.row]];
        cell.lblSex.text =[NSString stringWithFormat:@"%@",[arrSex                                                                 objectAtIndex:indexPath.row]];
        cell.lblProduct.text=[NSString stringWithFormat:@"%@",[arrProduct                                                                  objectAtIndex:indexPath.row]];
        cell.lblEffectiveDate.text=[NSString stringWithFormat:@"%@",[arrEffectiveDate                                                                  objectAtIndex:indexPath.row]];
        cell.lblTermDate.text=[NSString stringWithFormat:@"%@",[arrTermDate                                                                  objectAtIndex:indexPath.row]];
        cell.lblState.text=[NSString stringWithFormat:@"%@",[arrState                                                                  objectAtIndex:indexPath.row]];
        cell.lblHealthPlan.text=[NSString stringWithFormat:@"%@",[arrHealthPlan                                                                  objectAtIndex:indexPath.row]];
        
        return cell;
        
        
        
    }
    //ipad
    else
    {
        member_Searchcell *cell=(member_Searchcell *)[tableView dequeueReusableCellWithIdentifier:My_identifier];
            if (cell==nil) 
            {
                    
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"member_Searchcell" owner:self options:nil];
                    cell = [nib objectAtIndex:0];      
            }
        cell.btnArrow.tag=indexPath.row;
        
        if([Str_selected isEqualToString:@"yes"])
        {
            if (selectedIndex==indexPath.row) 
            {
                
                [cell.cellView setHidden:NO]; 
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchdownarrow.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];                
                
                
            }
            else
            {
                [cell.cellView setHidden:YES];
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchrightarrow.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
            }
            
        }
        else
        {
            [cell.cellView setHidden:YES];        
            
        }
                    cell.lblMemberName.text=[NSString stringWithFormat:@"%@",[arrMemberName                                                                  objectAtIndex:indexPath.row]];
                    cell.lblMemberNumber.text=[NSString stringWithFormat:@"%@",[arrMemberNumber                                                                  objectAtIndex:indexPath.row]];
                    cell.lblSex.text =[NSString stringWithFormat:@"%@",[arrSex                                                                 objectAtIndex:indexPath.row]];
                    cell.lblDob.text=[NSString stringWithFormat:@"%@",[arrDob                                                                  objectAtIndex:indexPath.row]];
                    cell.lblProduct.text=[NSString stringWithFormat:@"%@",[arrProduct                                                                  objectAtIndex:indexPath.row]];
                    cell.lblEffectiveDate.text=[NSString stringWithFormat:@"%@",[arrEffectiveDate                                                                  objectAtIndex:indexPath.row]];
                    cell.lblTermDate.text=[NSString stringWithFormat:@"%@",[arrTermDate                                                                  objectAtIndex:indexPath.row]];
                    cell.lblState.text=[NSString stringWithFormat:@"%@",[arrState                                                                  objectAtIndex:indexPath.row]];
                    cell.lblHealthPlan.text=[NSString stringWithFormat:@"%@",[arrHealthPlan                                                                  objectAtIndex:indexPath.row]];
                    
                    return cell;
                    
       }
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if([Str_selected isEqualToString:@"yes"])
        {
            if(selectedIndex == indexPath.row)
            {
                return 178.0;
            }
            else 
            {
                return 40.0;
           
            }
        
        }
        else
        {
            return 40.0;
        
        }
    }
     //ipad
    else
    {
        if([Str_selected isEqualToString:@"yes"])
        {
            if(selectedIndex == indexPath.row)
            {
                return 265.0;
            }
            else 
            {
                return 78.0;
                
            }
            
        }
        else
        {
            return 78.0;
            
        }  
    }
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
            
    return [arrMemberName count];  
        
   
}

//release variables
-(void) dealloc
{   
    [scrlMember release];
    [tblMember release];
    [currentTable release];
    [Str_selected release];
    
    [imgBg release];
    [imgFooter release];
    [imgHeader release];
    [imgAimLogo release];
    
    [imgInnerBg release];
    [imgTableBg release];
    [imgMobilePortal release];
    [lblHeader release];
    [lblTableCaption release];
    [btnBack release];
    [btnLogout release];
    
    [super dealloc];
}
@end
