#!/usr/bin/perl
#Chores, David Ferrone, Jan 25 2015
# # # # # # # # # # # # # # # # # #
# Chores randomly selects a few chores from a pre-defined list.
# # # # # # # # # # # # # # # # # #

@Chore_List=("Kitchen", "Bathroom", "Living room", "Dining room","Bedroom","Laundry");

sub Chore_Selector{
    @Local_List = @Chore_List;
    $Half_Length = int($#Local_List/2); 
    for (my $i=0; $i <= $Half_Length; $i++) {
	$Length = $#Local_List;
	$r = rand($Length);
	$Chores=$Chores.$Local_List[$r].", ";
	splice @Local_List, $r, 1;
    }
    return $Chores; ###  substr($Chores, 0, -2);
}

sub main{
    $Selected_Chores=&Chore_Selector;
    print "The chores I have selected for David are: ", $Selected_Chores;
    print "\n";
    print "The chores I have selected for Taneisha : ";
    foreach(@Local_List){
	print $_.", ";}
    print "\n\n";
    return 0;
}

&main;
