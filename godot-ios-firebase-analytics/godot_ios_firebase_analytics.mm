//
//  godot_ios_firebase_analytics.m
//  godot-ios-firebase-analytics
//
//  Created by YamazakiAkio on 2022/02/08.
//

#import "godot_ios_firebase_analytics.h"

#import <Foundation/Foundation.h>
#import <FirebaseCore/FIRApp.h>

void godot_firebase_analytics_init() {
    NSLog(@"init FirebaseAnalytics plugin");
    [FIRApp configure];
}

void godot_firebase_analytics_deinit() {
    NSLog(@"deinit FirebaseAnalytics plugin");
}
