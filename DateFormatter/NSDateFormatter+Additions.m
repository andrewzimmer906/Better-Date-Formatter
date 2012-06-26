//
//  NSDateFormatter+Additions.m
//  DateFormatter
//
//  Created by Andrew Zimmer on 5/29/12.
//  Copyright (c) 2012 Andrew Zimmer. All rights reserved.
//

#import "NSDateFormatter+Additions.h"

@implementation NSDateFormatter (Additions)

+(id)newWithFormat:(NSString*)format, ... {
    va_list ap;
    va_start(ap, format);
    NSString *formatterString = [[NSString alloc] initWithFormat:format arguments:ap];
    va_end(ap);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatterString];
    [formatterString release];
    
    return formatter;
}

+(NSString*)stringFromDate:(NSDate*)date withFormat:(NSString*)format, ... {
    va_list ap;
    va_start(ap, format);
    NSString *formatterString = [[NSString alloc] initWithFormat:format arguments:ap];
    va_end(ap);
    
    NSDateFormatter *formatter = [NSDateFormatter newWithFormat:formatterString];
    NSString *string = [formatter stringFromDate:date];
    [formatterString release];
    [formatter release];
    return string;
}

+(NSDate*)dateFromString:(NSString*)dateString withFormat:(NSString*)format, ... {
    va_list ap;
    va_start(ap, format);
    NSString *formatterString = [[NSString alloc] initWithFormat:format arguments:ap];
    va_end(ap);
    
    NSDateFormatter *formatter = [NSDateFormatter newWithFormat:formatterString];
    NSDate *date = [formatter dateFromString:dateString];
    [formatterString release];
    [formatter release];
    return date;
}

@end
