#!/usr/bin/perl

use strict;
use warnings;
use DateTime::TimeZone;
use Time::Piece;

#please change file path with yours before using
open(my $in, '<', 'C:\Users\iaktas\Desktop\bad_states.txt')
    or die "Cannot open input.txt: $!";

open(my $out, '>', 'C:\Users\iaktas\Desktop\bad_states_output.txt')
    or die "Cannot open output.txt: $!";

#read bad_states.txt and write rows into bad_states_output.txt which contain "time" string  	
while (<$in>) {
    print $out $_ if /time/;
 
}
close($in);
close($out);

open(my $open, '<', 'C:\Users\iaktas\Desktop\bad_states_output.txt')
    or die "Cannot open output.txt: $!";

#put lines into an array
my @Lines = <$open>;
close($open);

open(my $deleted, '>', 'C:\Users\iaktas\Desktop\bad_states_output.txt')
    or die "Cannot open output.txt: $!";

my ($time_str);
my $header="time=\"";
my $footer="\"\/><data>";
my @chars;
my $str_Comparable_Date;
my $time = Time::Piece->new;
# 3 days = 259200 seconds 
my $three_days_ago_val = $time - 259200; 
my $three_days_ago_epoch = $three_days_ago_val->epoch; #unix val of the date#
my $comparable_date_epoch;    

foreach my $LINE (@Lines) {
	#get date value from the line which is between $header and $footer
	($time_str)= $LINE =~ /$header(.*)$footer/;
       
	#split +03:00 value from the date value
	@chars=split /\+/, $time_str;
	$str_Comparable_Date = $chars[0];
	
	$comparable_date_epoch = $time->strptime($str_Comparable_Date,"%Y-%m-%dT%H:%M:%S")->epoch; #unix val#
	
	#date comparison is here
	if($comparable_date_epoch> $three_days_ago_epoch){
		print $deleted $LINE ;
		}
		
}

