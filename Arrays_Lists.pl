($fred,$barney)=qw<flinstone rubble slate granite>; #slate amd granite will be ignored for the assignment
print "$fred \n";
print "$barney \n";

($languages[0], $languages[1], $languages[2], $languages[3])=qw/c++ perl java python/;
print "@languages \n";

@istanbul_ofice_members=qw(abdullah bulent david irem kutyar aysun);
print "@istanbul_ofice_members \n";
push(@istanbul_ofice_members, erman); #puts erman in end of the array
print "@istanbul_ofice_members \n";

$erman_name =  pop @istanbul_ofice_members; #the last member of an array will be deleted, but leaves a space in the array.
$#istanbul_ofice_members +=1;
print "$erman_name has left the office, now there are $#istanbul_ofice_members employees in istanbul office. \n";

@array = @istanbul_ofice_members;
unshift @array, erman;
print "$array[$#array] is back !! \n";
@istanbul_ofice_members = @array;

print "(@istanbul_ofice_members) \n";

foreach $employee(@istanbul_ofice_members){
	print "one of istanbul office member is $employee \n";
	}
	
	
foreach $language (@languages) {
$language = "\t$language"; # put a tab in front of each element of @rocks
$language .= "\n"; # put a newline on the end of each
}
print "The languages are:\n", @languages; # Each one is indented, on its own line

foreach (1..5) { # Uses $_ by default
print " $_!\n";
}


@numbers = 6..10;
print "@numbers \n";
@reversed_numbers = reverse(@numbers);
print "@reversed_numbers \n";

@sorted_members = sort(@istanbul_ofice_members);
print "Sorted list is : @sorted_members \n"; 

@rocks = qw( talc quartz jade obsidian );
print "How many rocks do you have?\n";
print "I have ", $#rocks+1, " rocks!\n"; # WRONG, prints names of rocks
print "I have ", scalar @rocks, " rocks!\n"; # Correct, gives a number


##Exercises - End of the chapter 
#Execise 1.Write a program that reads a list of strings on separate lines until end-of-input
#and prints out the list in reverse order.
print "Please list sth you want : \n";
chomp(@stdin_list = <STDIN>);
print "Your list is : @stdin_list \n";
@reversed_stdin_list = reverse(@stdin_list);
print "Reversed list is : @reversed_stdin_list \n";

#Exercise 2. Write a program that reads a list of numbers (on separate lines) until end-ofinput
#and then prints for each number the corresponding person’s name from the
#list shown below. (Hardcode this list of names into your program. That is, it should
#appear in your program’s source code.) For example, if the input numbers were
#1, 2, 4, and 2, the output names would be fred, betty,dino, and betty:
#fred betty barney dino wilma pebbles bamm-bamm

@the_flintstones = qw/fred betty barney dino wilma pebbles bamm-bamm/;
print "Please enter numbers to choose the flintstones character to be listed in that order. \n ";
print "The original list is here : @the_flintstones \n";
print "Your turn : \n";
chomp(@list_of_numbers = <STDIN>);
$the_last_index_of_flinstones = $#the_flintstones+1;
@your_list = qw//;
foreach $number (@list_of_numbers){
		
		if(defined($number) and $number=~ /^[0-9]+$/  and ($number>0 && $number<=$the_last_index_of_flinstones)){
				$index = $number -1;
				push(@your_list, $the_flintstones[$index]);
				
		}else{
			print "$number is invalid !!The list should contain numbers between 1 and $the_last_index_of_flinstones\n";
		}
	}	
	
print "Your list is : @your_list\n";

#Exercise 3.
# Write a program that reads a list of strings (on separate lines) until end-of-input.
# Then it should print the strings in ASCIIbetical order. That is, if you enter the
# strings fred, barney, wilma, betty, the output should show barney betty fred
# wilma. Are all of the strings on one line in the output or on separate lines? Could
# you make the output appear in either style?

@sorted_the_flinstones = sort(@the_flintstones);
print "The sorted list (in one line) is @sorted_the_flinstones \n";
print "The sorted list (in separate lines) :";
foreach $characters (@sorted_the_flinstones){
	print" \n $characters ";
	
	}