//
//  TrackWithLiveTracksDto.m
//  turingIOS
//
//  Created by DIAMOND on 10/12/23.
//

#import <Foundation/Foundation.h>
#import "CollectionOfLiveTrackDto.h"
#import "TrackWithLiveTracksDto.h"

@implementation TrackWithLiveTracksDto

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.Id = dict[@"Id"];
        self.Name = dict[@"Name"];
        self.TrackName = dict[@"TrackName"];
        self.TrackNo = dict[@"TrackNo"];
        self.PlaybackCount = dict[@"PlaybackCount"];
        self.ArtistId = dict[@"ArtistId"];
        self.AlbumId = dict[@"AlbumId"];
        self.GenreId = dict[@"GenreId"];
        self.ShowOnAndroid = dict[@"ShowOnAndroid"];
        self.IsReplicated = dict[@"IsReplicated"];
        
        // Create and initialize CollectionOfLiveTrackDto as needed
        self.LiveTracks = [[CollectionOfLiveTrackDto alloc] initWithDictionary:dict[@"LiveTracks"]];
    }
    return self;
}

- (NSDictionary *)jsonObject {
    NSMutableDictionary *jsonDict = [NSMutableDictionary dictionary];
    jsonDict[@"Id"] = self.Id;
    jsonDict[@"Name"] = self.Name;
    jsonDict[@"TrackName"] = self.TrackName;
    jsonDict[@"TrackNo"] = self.TrackNo;
    jsonDict[@"PlaybackCount"] = self.PlaybackCount;
    jsonDict[@"ArtistId"] = self.ArtistId;
    jsonDict[@"AlbumId"] = self.AlbumId;
    jsonDict[@"GenreId"] = self.GenreId;
    jsonDict[@"ShowOnAndroid"] = self.ShowOnAndroid;
    jsonDict[@"IsReplicated"] = self.IsReplicated;
    
    // Convert CollectionOfLiveTrackDto to a dictionary and add it to the JSON
    jsonDict[@"LiveTracks"] = [self.LiveTracks jsonObject];

    return jsonDict;
}

@end

