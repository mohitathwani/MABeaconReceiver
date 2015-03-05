//
//  MABeaconReceiver.m
//  iBeaconDemo
//
//  Created by Labs on 3/5/15.
//  Copyright (c) 2015 Tera Mo Labs. All rights reserved.
//

#import "MABeaconReceiver.h"

@implementation MABeaconReceiver

-(instancetype)initWithUUID:(NSString *)uuid bundleID:(NSString *)bundleID {
    
    if (self = [super init]) {
        
        self.locationManager = [[CLLocationManager alloc] init];
        [self.locationManager requestAlwaysAuthorization];
        self.locationManager.delegate = self;
        
        self.UUID = uuid;
        self.bundleID = bundleID;
        
        [self setupRegion];
        [self locationManager:self.locationManager didStartMonitoringForRegion:self.beaconRegion];
    }
    
    return self;
}

- (void)setupRegion {
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:self.UUID];
    self.beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid identifier:self.bundleID];
    [self.locationManager startMonitoringForRegion:self.beaconRegion];
}

- (void)locationManager:(CLLocationManager *)manager didStartMonitoringForRegion:(CLRegion *)region {
    NSLog(@"Region monitoring started");
    [self.locationManager startRangingBeaconsInRegion:self.beaconRegion];
}

- (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region {
    NSLog(@"Entered region: %@", region.identifier);
    [self.locationManager startRangingBeaconsInRegion:self.beaconRegion];
}

-(void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region {
    NSLog(@"Exit region: %@", region.identifier);
}

-(void)locationManager:(CLLocationManager *)manager didRangeBeacons:(NSArray *)beacons inRegion:(CLBeaconRegion *)region {
    
    [self.delegate foundBacons:beacons inRegion:region];
    
}

@end
