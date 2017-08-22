# Subroutines
# Subroutine definitions can be anywhere in program text
# Subroutine definitions are global; without some
# powerful trickiness, there are no private subroutines. If you have two subroutine definitions
# with the same name, the later one overwrites the earlier one.
use encoding "utf8";
my $n = &max(5,10);   #n is a global variable
my @numbers = qw/6, 1, 33, 11, 90, 45, 53, 84, 93/;
my $maximum = &find_max(@numbers);
#&find_max(6, 1, 33, 11, 90, 45, 53, 84, 93); You can call the function in this way.
print "The comparison result is $n \n";
print "The maximum value from the set of @numbers is $maximum \n";
my @names = qw/fred barney betty dino wilma pebbles bamm_bamm/;
my $result = &which_element_is("bamm_bamm", @names);

if($result == -1){
		print "We couldn't find what we are searching.. \n";
	}else{
		print "We have found $result!! \n";
	}
	
#Another way to call a function without ampersand but you have to know that Division is not built-in function to use your own subroutine without ampersand.my $division_result = division 100, 25; 
print "My division result is $division_result \n";

sub max {
my($m, $n); # new, private variables for this block
($m, $n) = @_; # give names to the parameters
if ($m > $n) { $m } else { $n }
}

sub find_max {
my($max_so_far) = shift @_; # the first one is the largest yet seen
foreach (@_) { # look at the remaining arguments
if ($_ > $max_so_far) { # could this one be bigger yet?
$max_so_far = $_;
}
}
$max_so_far;
}


sub which_element_is {
	my($what, @the_flintstones) = @_;
	print "You are searching for $what in (@the_flintstones) \n";
	
	foreach $character (@the_flintstones){
		if($character eq $what ){
			
			return $character;			}
		}
		-1;
	}
	
	
	sub division{
	return @_[0]/@_[1];
	}


##Exercises 
#1.Write a subroutine, named total, that returns the total of a list of numbersmy @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";
sub total {
		my(@numbers) = @_;
		my $sum = 0;
		foreach $number (@numbers){
			$sum += $number;
		}
		return $sum;
	
}

#2.Using the subroutine from the previous problem, make a program to calculate the sum of the numbers from 1 to 1000
my $second_ex_total = total(1..1000);
print "The total of numbers from 1 to 1000 is $second_ex_total \n";

#3.Extra credit exercise: write a subroutine, called &above_average, that takes a
#list of numbers and returns the ones that are above the average
@numbers_above_average = numbers_above_the_avarage(1..500);
print "The list of numbers which are above the average ($average) is [@numbers_above_average] \n";
sub numbers_above_the_avarage {
		my @numbers = @_;
		my $sum = &total(@numbers);
		my $index = $#numbers +1;
		$average =$sum/$index;
		my @numbers_above_average;
		foreach $number (@numbers){
			if($number > $average){
				push(@numbers_above_average, $number);
				}
			}
		return @numbers_above_average;
}

#4. Write a subroutine, named greet, that welcomes the person you name by telling them the name of the last person it greeted.
#5. Modify the previous program to tell each new person the names of all of the people it has previously greeted:
use 5.010;
sub greet{
	state @people;
	foreach my $person (@_){
		push @people, $person;
		} 
	if($#people == 0){
		my $person = @people[0];
		print "Hi $person! You are the first one here!\n";
		}else{
			@greeting_list = @people[0..($#people-1)];
			@the_last_people = @people[$#people-1];
			print "Hi @people[$#people]! @the_last_people is also here!\n";
			print "Hi @people[$#people]! I've seen: @greeting_list \n";
			
		}
		print "\n";
}

greet( "Fred" );
greet( "Barney" );
greet( "Irem" );
greet( "Wilma" );
greet( "Betty" );
