Better Date Formatter
=====

A category on NSDateFormatter that makes creating custom date formats faster and easier
----------------------------------------------------------------------

This repo includes a simple class that has all the formats for an NSDateFormatter ready to go.

* Create a string from a date or vice versa in one line of code.
* Don't look up NSDateFormatter's accepted formats ever again.
* Convenience methods to convert to and from ISO-6081 format, and to a twitter style string (now, 5 mins ago, etc)

**Example usage**  

    NSDate *date = [NSDate date];
    NSString *dateString = [NSDateFormatter stringFromDate:date withFormat:@"%@, %@ %@ %@", DAY_OF_WEEK_FORMAT, MONTH_FORMAT, DAY_OF_MONTH_FORMAT_NUM, YEAR_FORMAT_4];
	NSString *timeString = [NSDateFormatter stringFromDate:date withFormat:@"%@:%@:%@ %@", HOUR_FORMAT, MINUTE_FORMAT, SECOND_FORMAT, AM_PM_FORMAT];
	NSString *ISO_String = [NSDateFormatter stringFromDateForISO8601:date]; //YYYY-MM-DDTHH:mm:ssz
	NSString *twitterReadableString = [NSDateFormatter twitterDateString:date];
	
**Questions or Comments:**   
Email: andrewzimmer906@gmail.com  
Twitter: @andrewzimmer906  
