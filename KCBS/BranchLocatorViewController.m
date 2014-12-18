//
//  BranchLocatorViewController.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "BranchLocatorViewController.h"
#import "MapAnnotation.h"

@interface BranchLocatorViewController ()

@end

@implementation BranchLocatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    //self.title=@"Branch Locator";
    mapView = [[MKMapView alloc]initWithFrame:
               CGRectMake(0, 0, 320,576)];
    mapView.delegate = self;
    mapView.centerCoordinate = CLLocationCoordinate2DMake(37.32, -122.03);
    mapView.mapType = MKMapTypeStandard;
    
   CLLocationCoordinate2D location1;
   location1.latitude = (double) 17.0102;
    location1.longitude = (double) 82.2250;
//    // Add the annotation to our map view
   MapAnnotation *newAnnotation = [[MapAnnotation alloc]
                                   initWithTitle:@"BendaComplex,1st Floor,Sarpavaram,Junction,kakinada-533005" andCoordinate:location1];
[mapView addAnnotation:newAnnotation];
    CLLocationCoordinate2D location;
    location.latitude = (double) 16.945418;
    location.longitude = (double) 82.234949;
    MapAnnotation *newAnnotation2 = [[MapAnnotation alloc]
                                     initWithTitle:@"Sahakarasadan,13-4-13,ramayyastreet,Suryaraopet,Kakinada" andCoordinate:location];
    [mapView addAnnotation:newAnnotation2];
    [self.view addSubview:mapView];


    // Do any additional setup after loading the view.
}
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id <MKAnnotation> mp = [annotationView annotation];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance
    ([mp coordinate], 2000, 2000);
    region.span.longitudeDelta  = 0.2;
    region.span.latitudeDelta  = 0.2;
    [mv setRegion:region animated:YES];
    [mv selectAnnotation:mp animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
