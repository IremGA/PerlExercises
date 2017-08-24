#Hashes
#Exercises

#exercise #1 : Write a program that will ask the user for a given name and report the corresponding family name.

print "INPUT \t OUTPUT \n";
%family = ("irem"=>"gamzeli", "erdal"=>"aktas", "guls"=>"inandik", "onur"=>"gamzeli", "emel"=>"aktas",);
while(($name, $surname) = each %family ){
	print "$name \t $surname \n";
	}
$family{"wilma"}="flinstone";
$family{"betty"}="pebbles";

print"\nUPDATED!! \n";
print "INPUT \t OUTPUT \n";
foreach $name (keys %family){
	if($family{$name}){
		print "$name \t  $family{$name} \n";
		}
	}
	
print "Please type a name in the list : \n";
chomp(my $name = <STDIN>);
print "The surname of $name is $family{$name} \n";


# Write a program that reads a series of words (with one word per line*) until
# end-of-input, then prints a summary of how many times each word was seen. (Hint:
# remember that when an undefined value is used as if it were a number, Perl automatically
# converts it to 0. It may help to look back at the earlier exercise that kept
# a running total.) So, if the input words were fred, barney, fred, dino, wilma, fred
# (all on separate lines), the output should tell us that fred was seen 3 times. For
# extra credit, sort the summary words in ASCII order in the output.

@fruits = qw/apple pineapple banana grape apple orange banana apple orange peach peach orange grape peach/;
my %fruit_counter;
foreach $fruit (@fruits){
	if($fruit_counter{$fruit}>=0){
		$fruit_counter{$fruit}+=1;
	}else{
		$fruit_counter{$fruit}=0;	
	}
}
foreach $fruit (sort keys %fruit_counter){
	if($fruit_counter{$fruit}){
		print "There is/are $fruit_counter{$fruit} $fruit/s \n";
		}
	}
	
# 3. Write a program to list all of the keys and values in %ENV. Print the results in
# two columns in ASCIIbetical order. For extra credit, arrange the output to vertically
# align both columns. The length function can help you figure out how wide to make
# the first column. Once you get the program running, try setting some new environment
# variables and ensuring that they show up in your output.

my $longest = 0;
foreach my $key ( keys %ENV ) {
my $key_length = length( $key );
$longest = $key_length if $key_length > $longest;
}
foreach $key (sort keys %ENV){
	printf "%-${longest}s %s\n", $key, $ENV{$key};
	}