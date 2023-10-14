//
//  TrackWithLiveTracksDto.h
//  turingIOS
//
//  Created by DIAMOND on 10/12/23.

#import <Foundation/Foundation.h>

@class CollectionOfLiveTrackDto;

@interface TrackWithLiveTracksDto : NSObject

@property NSNumber *Id;
@property NSString *Name;
@property NSString *TrackName;
@property NSNumber *TrackNo;
@property NSNumber *PlaybackCount;
@property NSNumber *ArtistId;
@property NSNumber *AlbumId;
@property NSNumber *GenreId;
@property NSNumber *ShowOnAndroid;
@property NSNumber *IsReplicated;
@property CollectionOfLiveTrackDto *LiveTracks;

- (id)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)jsonObject;

@end




