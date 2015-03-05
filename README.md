# MABeaconReceiver

[![CI Status](http://img.shields.io/travis/Mohit Athwani/MABeaconReceiver.svg?style=flat)](https://travis-ci.org/Mohit Athwani/MABeaconReceiver)
[![Version](https://img.shields.io/cocoapods/v/MABeaconReceiver.svg?style=flat)](http://cocoadocs.org/docsets/MABeaconReceiver)
[![License](https://img.shields.io/cocoapods/l/MABeaconReceiver.svg?style=flat)](http://cocoadocs.org/docsets/MABeaconReceiver)
[![Platform](https://img.shields.io/cocoapods/p/MABeaconReceiver.svg?style=flat)](http://cocoadocs.org/docsets/MABeaconReceiver)

## Description
MABeaconReceiver allows you to connect to iBeacons in a light weight manner without having to rely on SDKs provided by iBeacon manufacturers.

## Usage

    #import "MABeaconReceiver.h"

And then create a property:

    @property (strong, nonatomic) MABeaconReceiver *beaconReceiver;
    
Conform to the protocol: 

    MABeaconReceiverDelegate

Set up the receiver:

    self.beaconReceiver = [[MABeaconReceiver alloc] initWithUUID:kUUID bundleID:kBundleID];
    self.beaconReceiver.delegate = self;
    
Implement the function:

    -(void)foundBacons:(NSArray *)beacons inRegion:(CLBeaconRegion *)region 
    NSSortDescriptor *nearestSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"rssi" ascending:YES];
    
    NSArray *sortedBeacons = [beacons sortedArrayUsingDescriptors:@[nearestSortDescriptor]];
    
    //This is the nearest beacon
    CLBeacon *beacon = [sortedBeacons lastObject];
    }
    

## Requirements

## Installation

MABeaconReceiver is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "MABeaconReceiver"

## Author

Mohit Athwani, mohit@athwani.net

## License

MABeaconReceiver is available under the MIT license. See the LICENSE file for more info.

