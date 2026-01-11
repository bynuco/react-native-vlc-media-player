#import "React/RCTView.h"
#import <VLCKit/VLCKit.h>

@class RCTEventDispatcher;

@interface RCTVLCPlayer : UIView <VLCCustomDialogRendererProtocol>

@property(nonatomic, copy) RCTBubblingEventBlock onVideoProgress;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoPaused;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoStopped;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoBuffering;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoPlaying;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoEnded;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoError;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoOpen;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoLoadStart;
@property(nonatomic, copy) RCTBubblingEventBlock onVideoLoad;
@property(nonatomic, copy) RCTBubblingEventBlock onRecordingState;
@property(nonatomic, copy) RCTBubblingEventBlock onSnapshot;

@property(nonatomic, strong) VLCDialogProvider *dialogProvider;
@property(nonatomic, assign) BOOL acceptInvalidCertificates;

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
    NS_DESIGNATED_INITIALIZER;
- (void)setMuted:(BOOL)value;
- (void)startRecording:(NSString *)path;
- (void)stopRecording;
- (void)stopPlayer;
- (void)snapshot:(NSString *)path;
@end
