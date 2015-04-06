//
//  JTCalendarMenuMonthView.m
//  JTCalendar
//
//  Created by Jonathan Tribouharet
//

#import "JTCalendarMenuMonthView.h"

@interface JTCalendarMenuMonthView(){
}

@end

@implementation JTCalendarMenuMonthView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(!self){
        return nil;
    }
    
    [self commonInit];
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(!self){
        return nil;
    }
    
    [self commonInit];
    
    return self;
}

- (void)commonInit
{
    {
        self.textLabel = [UILabel new];
        [self addSubview:self.textLabel];
        
        self.textLabel.textAlignment = NSTextAlignmentCenter;
        self.textLabel.numberOfLines = 0;
    }
}

- (void)setCurrentDate:(NSDate *)currentDate
{
    self.textLabel.text = self.calendarManager.calendarAppearance.monthBlock(currentDate, self.calendarManager);
}

- (void)layoutSubviews
{
    self.textLabel.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);

    // No need to call [super layoutSubviews]
}

- (void)reloadAppearance
{
    self.textLabel.textColor = self.calendarManager.calendarAppearance.menuMonthTextColor;
    self.textLabel.font = self.calendarManager.calendarAppearance.menuMonthTextFont;
}

@end
