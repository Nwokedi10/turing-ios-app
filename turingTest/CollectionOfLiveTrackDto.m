//
//  CollectionOfLiveTrackDto.m
//  turingTest
//
//  Created by DIAMOND on 10/12/23.
//

#import <Foundation/Foundation.h>

#import "CollectionOfLiveTrackDto.h"

@implementation CollectionOfLiveTrackDto

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        // Initialize the properties using values from the dictionary
        self.trackId = dict[@"trackId"];
        self.trackName = dict[@"trackName"];
        self.duration = dict[@"duration"];
    }
    return self;
}

- (NSDictionary *)jsonObject {
    // Convert the object's properties to a dictionary for serialization
    NSMutableDictionary *jsonDict = [NSMutableDictionary dictionary];
    jsonDict[@"trackId"] = self.trackId;
    jsonDict[@"trackName"] = self.trackName;
    jsonDict[@"duration"] = self.duration;
    
    return jsonDict;
}

@end
