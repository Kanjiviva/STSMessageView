//
//  STSMessageView.h
//  STSMessageView
//
//  Created by Steve on 2016-02-25.
//  Copyright © 2016 Steve. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STSMessageView : UIView

# pragma mark - Properties -

@property (strong, nonatomic) UIImage *frontImage;
@property (strong, nonatomic) UIImage *buttonImage;
@property (strong, nonatomic) NSString *messageText;
@property (strong, nonatomic) UIColor *backgroundColor;

# pragma mark - Methods -

- (instancetype)initWithFrame:(CGRect)frame;
- (void)showWithDuration:(NSTimeInterval)duration withTimerToClose:(NSTimeInterval)timer;
- (void)dismissWithDuration:(NSTimeInterval)duration;

@end
