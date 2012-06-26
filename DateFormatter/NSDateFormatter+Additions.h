//
//  NSDateFormatter+Additions.h
//  DateFormatter
//
//  Created by Andrew Zimmer on 5/29/12.
//  Copyright (c) 2012 Andrew Zimmer. All rights reserved.
//

#import <Foundation/Foundation.h>

#define AM_PM_FORMAT @"a"

#define MILLISECOND_OF_DAY_FORMAT @"A"

#define DAY_OF_WEEK_FORMAT_NUM @"e"
#define DAY_OF_WEEK_FORMAT_ABR @"EEE"
#define DAY_OF_WEEK_FORMAT @"EEEE"

#define DAY_OF_MONTH_FORMAT_NUM @"d"
#define DAY_OF_YEAR_FORMAT @"D"
#define WEEK_OF_MONTH_FORMAT @"F"

#define JULIAN_DAY_FORMAT_NUM @"g"
#define BC_AD_FORMAT_ABR @"GGG"
#define BC_AD_FORMAT_FULL @"GGGG"

#define HOUR_FORMAT @"h"
#define HOUR_MILITARY_FORMAT @"HH"
#define MINUTE_FORMAT @"mm"
#define SECOND_FORMAT @"ss"

#define MONTH_FORMAT_NUM @"LL"
#define MONTH_FORMAT_ABR @"LLL"
#define MONTH_FORMAT @"LLLL"

#define QUARTER_FORMAT_NUM @"qq"
#define QUARTER_FORMAT_ABR @"qqq"
#define QUARTER_FORMAT_FULL @"qqqq"

#define YEAR_FORMAT_2 @"yy"
#define YEAR_FORMAT_4 @"yyyy"

#define TIMEZONE_FORMAT_NUM @"Z"
#define TIMEZONE_FORMAT_ABR @"zz"
#define TIMEZONE_FORMAT @"zzzz"

@interface NSDateFormatter (Additions)

+(id)newWithFormat:(NSString*)format, ...;
+(NSString*)stringFromDate:(NSDate*)date withFormat:(NSString*)format, ...;
+(NSDate*)dateFromString:(NSString*)dateString withFormat:(NSString*)format, ...;

+(id)newForISO8601;
+(NSString*)stringFromDateForISO8601:(NSDate*)date;
+(NSDate*)dateFromStringForISO8601:(NSString*)dateString;

+(NSString*)twitterStringFromDate:(NSDate*)date;
@end
