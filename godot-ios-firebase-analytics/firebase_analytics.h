//
//  firebase_analytics.h
//  godot-ios-firebase-analytics
//
//  Created by YamazakiAkio on 2022/02/09.
//

#ifndef firebase_analytics_h
#define firebase_analytics_h

#include "core/object.h"

class FirebaseAnalytics : public Object {
    GDCLASS(FirebaseAnalytics, Object);
    
    static void _bind_methods();
    
public:
    
    void configure();
    
    FirebaseAnalytics();
    ~FirebaseAnalytics();
};

#endif /* firebase_analytics_h */
