//
//  MABeaconReceiver.h
//  iBeaconDemo
//
//  Created by Labs on 3/5/15.
//  Copyright (c) 2015 Tera Mo Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;

@protocol MABeaconReceiverDelegate <NSObject>

-(void)foundBacons:(NSArray *)beacons inRegion:(CLBeaconRegion *)region;

@end


@interface MABeaconReceiver : NSObject<CLLocationManagerDelegate>

@property (strong, nonatomic) CLBeaconRegion *beaconRegion;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) NSString *UUID;
@property (strong, nonatomic) NSString *bundleID;

@property (weak, nonatomic) id<MABeaconReceiverDelegate> delegate;


-(instancetype)initWithUUID:(NSString *)uuid bundleID:(NSString *)bundleID;


@end
