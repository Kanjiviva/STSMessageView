//
//  STSMessageView.m
//  STSMessageView
//
//  Created by Steve on 2016-02-25.
//  Copyright © 2016 Steve. All rights reserved.
//

#import "STSMessageView.h"

@interface STSMessageView()

# pragma mark - IBOutlets -

@property (weak, nonatomic) IBOutlet UIImageView *STSMessageImageView;
@property (weak, nonatomic) IBOutlet UILabel *STSMessageLabel;
@property (weak, nonatomic) IBOutlet UIButton *STSMessageCloseButton;
@property (weak, nonatomic) IBOutlet UIView *STSMessageView;
@property (strong, nonatomic) IBOutlet UIView *view;

# pragma mark - Properties -

@end

@implementation STSMessageView

# pragma mark - init -

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"STSMessageView" owner:self options:nil];
        _view.frame = frame;
        self.frame = _view.frame;
        _STSMessageLabel.text = @"Hello";
        
        [self addSubview:_view];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"STSMessageView" owner:self options:nil];
        
        [self addSubview:_view];
    }
    return self;
}

# pragma mark - IBActions -

- (IBAction)closeButtonTapped:(UIButton *)sender {
    
}

# pragma mark - Public -

- (void)showWithDuration:(NSTimeInterval)duration withTimerToClose:(NSTimeInterval)timer {
    
    [UIView animateWithDuration:duration
                     animations:^{
                         CGRect frame = self.view.frame;
                         frame.origin.y += self.view.frame.size.height;
                         self.view.frame = frame;
    }];
    
    [self performSelector:@selector(dismissWithDuration:) withObject:self afterDelay:timer];
}

- (void)dismissWithDuration:(NSTimeInterval)duration {
    
    [UIView animateWithDuration:duration
                     animations:^{
                         CGRect frame = self.view.frame;
                         frame.origin.y -= self.view.frame.size.height;
                         self.view.frame = frame;
    }];
}
# pragma mark - Setters -

- (void)setFrontImage:(UIImage *)frontImage {
    _frontImage = frontImage;
    self.STSMessageImageView.image = _frontImage;
}

- (void)setButtonImage:(UIImage *)buttonImage {
    _buttonImage = buttonImage;
    [self.STSMessageCloseButton setImage:_buttonImage forState:UIControlStateNormal];
}

- (void)setMessageText:(NSString *)messageText {
    _messageText = messageText;
    self.STSMessageLabel.text = _messageText;
}

@end
