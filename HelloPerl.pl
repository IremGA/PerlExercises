#Llama book - Learning Perl 
#Exercises - Chapter 2 - Skalar
#iaktas

#String Operations
print "12"*" 3";
print "\n";
print "12irem12"*" 3";
print "\n";
print "12irem12"*" 3";
print "\n";
print "12irem"x3;
print "\n";
print "12irem"."3";
print "\n";
print "Irem"."7 "*" 5";
print "\n";
print "Irem"."35";
print "\n";
print "Irem"*"35";
print "\n";


#Scalar Variables and Relate Operations
$irem_age = 29;
print "$irem_age \n";
$irem_age +=1;
print "$irem_age \n";
$irem_age *=2;
print "$irem_age \n";
$irem_age **=2;
$irem_age .="_ Oh No!!";
print "$irem_age \n";

#Scalar Variables and Relate Operations
$irem_age = "29";
print "$irem_age \n";
$irem_age +="1";
print "$irem_age \n";
$irem_age *="2";
print "$irem_age \n";
$irem_age **="2";
$irem_age .="_ Oh No!!";
print "$irem_age \n";

$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n"; # not the steaks, but the value of $whats
print "fred ate $n ${what}s.\n"; # now uses $what
print "fred ate $n $what" . "s.\n"; # another way to do it
print 'fred ate ' . $n . ' ' . $what . "s.\n"; # an especially difficult way

if( 35 != 30 + 5){
	print "35 != 30 + 5 result is true \n";
}
else{
	print "Yes they are equal! \n";
}

#35 == 35.0; # true
#'35' eq '35.0'; # false (comparing as strings)
#'fred' lt 'barney'; # false
#'fred' lt 'free'; # true
#'fred' eq "fred"; # true
#'fred' eq 'Fred'; # false
#' ' gt ''; # true

$count = 0;
while($count < 10){
	 $count +=2;
	 print "vaule of the count is $count \n ";
	}

# Add up some odd numbers
$n = 1;
while ($n < 10) {
$sum += $n;
$n += 2; # On to the next odd number
}
print "The total was $sum.\n";

#The line-input operator <STDIN> is one operator that can return undef

# En of Chapter 2 : Exercises

#1,2,3-Computing circumference of a circle
$pi=3.141592654; 
print "Please enter radius value of the circle : \n";
chomp($r=<STDIN>);
if(defined($r) and $r==12.5){
	$circumference_of_circle =2*$pi*$r;
	print "The circumference value of a circle which has $r radius value is $circumference_of_circle \n";
	 }
elsif($r lt 0){
	print "The circumference value of a circle which has $r radius value is 0 \n";
	}
elsif($r!=12.5){
	print "I can only calculate circumference of a circle which has 12.5 radius value !! \n";
	}
else{
	print "There is no defined radius value to calculate circumference of the circle!! \n";
	}

#4 -Multiplication of 2 prompted variables
print "Please enter first value to be multiplied : \n";
chomp($first_val=<STDIN>);
print "Please enter second value to be multiplied : \n";
chomp($second_val=<STDIN>);

$multiplied_val = $first_val*$second_val;
print "The result is ".$multiplied_val." \n";

#5 -Write a program that prompts for and reads a string and a number (on separate
#lines of input) and prints out the string the number of times indicated by the number
#on separate lines

print "Please enter first value to be written: \n";
chomp($tobe_written=<STDIN>);
print "Please enter number of lines to be printed the previous value: \n";
chomp($number_of_lines=<STDIN>);

$count = 1;
if(defined($number_of_lines) and $number_of_lines=~ /^[0-9]+$/){
	while($count le $number_of_lines){
		print "$tobe_written \n";
		$count+=1;
		}
	
}else{
	print "please assign a proper value !! \n";
}
