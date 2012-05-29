//
//  NSDateFormatter+Additions.m
//  DateFormatter
//
//  Created by Andrew Zimmer on 5/29/12.
//  Copyright (c) 2012 Modea. All rights reserved.
//

#import "NSDateFormatter+Additions.h"

@implementation NSDateFormatter (Additions)

+(id)newWithFormat:(NSString*)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return formatter;
}

+(NSString*)stringFromDate:(NSDate*)date withFormat:(NSString*)format {
    NSDateFormatter *formatter = [NSDateFormatter newWithFormat:format];
    NSString *string = [formatter stringFromDate:date];
    [formatter release];
    return string;
}

+(NSDate*)dateFromString:(NSString*)dateString withFormat:(NSString*)format {
    NSDateFormatter *formatter = [NSDateFormatter newWithFormat:format];
    NSDate *date = [formatter dateFromString:dateString];
    [formatter release];
    return date;
}
@end
