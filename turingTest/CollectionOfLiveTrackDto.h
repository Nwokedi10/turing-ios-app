// CollectionOfLiveTrackDto.h

#import <Foundation/Foundation.h>

@interface CollectionOfLiveTrackDto : NSObject

@property (nonatomic, strong) NSNumber *trackId;
@property (nonatomic, copy) NSString *trackName;
@property (nonatomic, strong) NSNumber *duration;

- (id)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)jsonObject;

@end
