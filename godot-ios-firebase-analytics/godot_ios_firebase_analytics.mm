//
//  godot_ios_firebase_analytics.m
//  godot-ios-firebase-analytics
//
//  Created by YamazakiAkio on 2022/02/08.
//

#import "godot_ios_firebase_analytics.h"

#import <Foundation/Foundation.h>
#import "firebase_analytics.h"
#import "core/engine.h"

FirebaseAnalytics *firebase_analytics_plugin;

void godot_firebase_analytics_init() {
    NSLog(@"init FirebaseAnalytics plugin");
    firebase_analytics_plugin = memnew(FirebaseAnalytics);
    Engine::get_singleton()->add_singleton(Engine::Singleton("FirebaseAnalytics", firebase_analytics_plugin));
}

void godot_firebase_analytics_deinit() {
    NSLog(@"deinit FirebaseAnalytics plugin");
    if (firebase_analytics_plugin) {
       memdelete(firebase_analytics_plugin);
   }
}
