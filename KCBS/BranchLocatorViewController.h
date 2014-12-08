//
//  BranchLocatorViewController.h
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface BranchLocatorViewController : UIViewController<MKMapViewDelegate>
{
    MKMapView *mapView;
}
@end
