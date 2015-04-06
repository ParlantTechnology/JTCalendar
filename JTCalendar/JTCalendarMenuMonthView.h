//
//  JTCalendarMenuMonthView.h
//  JTCalendar
//
//  Created by Jonathan Tribouharet
//

#import <UIKit/UIKit.h>

#import "JTCalendar.h"

@interface JTCalendarMenuMonthView : UIView

@property (weak, nonatomic) JTCalendar *calendarManager;
@property (strong, nonatomic) UILabel *textLabel;

- (void)setCurrentDate:(NSDate *)currentDate;

- (void)reloadAppearance;

@end
