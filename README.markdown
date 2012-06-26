Better Date Formatter
=====

A category on NSDateFormatter that makes creating custom date formats faster and easier
----------------------------------------------------------------------

This repo includes a simple class that has all the formats for an NSDateFormatter ready to go.

* Create a string from a date or vice versa in one line of code.
* Don't look up NSDateFormatter's accepted formats ever again.

**Example usage**  

    NSDate *date = [NSDate date];
    NSString *dateString = [NSDateFormatter stringFromDate:date withFormat:@"%@, %@ %@ %@", DAY_OF_WEEK_FORMAT, MONTH_FORMAT, DAY_OF_MONTH_FORMAT_NUM, YEAR_FORMAT_4];
	
	NSString *timeString = [NSDateFormatter stringFromDate:date withFormat:@"%@:%@:%@ %@", HOUR_FORMAT, MINUTE_FORMAT, SECOND_FORMAT, AM_PM_FORMAT];
	
**Questions or Comments:**   
Email: andrewzimmer906@gmail.com  
Twitter: @andrewzimmer906  
