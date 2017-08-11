use DateTime qw();
use DateTime::TimeZone;
use Time::Local;
use Data::Dumper qw(Dumper);
use Time::Piece;

my $dt2 = DateTime->now->subtract(days => 1)->ymd("");

print "This is my formatted date:$dt2\n";

my $tz = DateTime::TimeZone->new( name => 'Europe/Istanbul' );
my $dt = DateTime->now();
my $offset = $tz->offset_for_datetime($dt);

print "TimeZone :$tz\n";
print "Date Time  Now:$dt\n";
print "Offset Time Zone:$offset\n";

my $dtIst = DateTime->now(time_zone => 'Europe/Istanbul');

print "Date Time Istanbul Now:$dtIst\n";
printf("Offset for %s in %s is %+g\n", $dtIst->iso8601, $tz, $offset / 60 / 60);


@t = localtime(time);
$gmt_offset_in_seconds = timegm(@t) - timelocal(@t);
print "GMT Offset:$gmt_offset_in_seconds\n";

#"2017-08-01T08:39:07+03:00"
my $comparable_date_string="2017-08-07T08:39:07+03:00";
my $TwoDaysAgoFromNow = DateTime->now->subtract(days => 2);
my @chars=split /\+/, $comparable_date_string;
my $dateTimeComparableStr = $chars[0];
my $time = Time::Piece->new;
my $TwoDaysAgo = $time - 172800;
my $value = $TwoDaysAgo->datetime;
my $twoDaysBeforeFromNowEpoch = $TwoDaysAgo->epoch;
my $dateTimeComparable = $time->strptime($dateTimeComparableStr,"%Y-%m-%dT%H:%M:%S")->datetime;
my $epoch_value_of_compared_date = $time->strptime($dateTimeComparableStr,"%Y-%m-%dT%H:%M:%S")->epoch;
print "DateTimeComparable var is : $dateTimeComparable \n";
print "Two Days Ago Date is  : $TwoDaysAgoFromNow \n";
print "2 days  : $value \n";

if($epoch_value_of_compared_date> $twoDaysBeforeFromNowEpoch ){
	print "You can add this notification in your file !! \n"
	}
else{
	print "Skip please!! \n"
	}