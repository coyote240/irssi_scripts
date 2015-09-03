use strict;
use vars qw($VERSION, %IRSSI);

use Irssi;
$VERSION = '0.0.1';
%IRSSI = (
    authors     => 'Adam A.G. Shamblin',
    contact     => 'zeroecks@tutanota.com',
    name        => 'Daily Scrum',
    description => 'This script will read input from a text file dated' .
                   'today and output it\'s contents to channel',
    license     => 'GNU GPL'
);
