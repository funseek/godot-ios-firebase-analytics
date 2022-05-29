//
//  firebase_analytics.m
//  godot-ios-firebase-analytics
//
//  Created by YamazakiAkio on 2022/02/09.
//

#import <Foundation/Foundation.h>

#include "core/project_settings.h"
#include "core/class_db.h"

#import "firebase_analytics.h"
#import <FirebaseCore/FIRApp.h>

void FirebaseAnalytics::_bind_methods() {
    ClassDB::bind_method(D_METHOD("configure"), &FirebaseAnalytics::configure);
}

void FirebaseAnalytics::configure() {
    NSLog(@"FIRApp configure");
    [FIRApp configure];
}

FirebaseAnalytics::FirebaseAnalytics() {
    NSLog(@"initialize FirebaseAnalytics");
}

FirebaseAnalytics::~FirebaseAnalytics() {
    NSLog(@"deinitialize FirebaseAnalytics");
}
