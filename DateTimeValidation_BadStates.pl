# This is a code block that compares a date value with two days from now.  

use DateTime::TimeZone;
use Time::Piece;

# Test with "2017-08-06T08:39:07+03:00", "2017-08-01T08:39:07+03:00" and "2017-08-07T08:39:07+03:00"
my $comparable_date_original_string="2017-08-06T08:39:07+03:00";
my @chars=split /\+/, $comparable_date_original_string;
my $str_Comparable_Date = $chars[0];

my $time = Time::Piece->new;
# 2 days = 172800 seconds 
my $two_days_ago_val = $time - 172800; 
my $two_days_ago_datetime= $two_days_ago_val->datetime;
my $two_days_ago_epoch = $two_days_ago_val->epoch; #unix val of the date#

my $comparable_date_epoch = $time->strptime($str_Comparable_Date,"%Y-%m-%dT%H:%M:%S")->epoch; #unix val#
my $comparable_date_datetime = $time->strptime($str_Comparable_Date,"%Y-%m-%dT%H:%M:%S")->datetime;

print "Comparable Date: $comparable_date_datetime \n";
print "Two Days Ago   : $two_days_ago_datetime \n";

#compares dates
if($comparable_date_epoch> $two_days_ago_epoch ){
	print "You can add this notification in your file !! \n"
	}
else{
	print "Skip please!! \n"
	}