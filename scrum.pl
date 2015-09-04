use strict;
use Irssi;
use POSIX qw(strftime);
use vars qw($VERSION %IRSSI);

my $description = <<DESCR;
This script will read input from a text file located in environment
variable SCRUM_DIR of the format yyyy-mm-dd.txt and output it's contents
line by line in the appropriate scrum format.  Your scrum file should
contain one update per line with no preceding #info.
DESCR

$VERSION = '0.0.1';
%IRSSI = (
    authors     => 'Adam A.G. Shamblin',
    contact     => 'zeroecks@tutanota.com',
    name        => 'Daily Scrum',
    description => $description,
    license     => 'GNU GPL'
);

Irssi::command_bind scrum => sub {
    my ($data, $server, $witem) = @_;
    my $filename = strftime "%Y-%m-%d.txt", localtime;

    if(!defined $ENV{SCRUM_DIR}) {
        die "Environment variable SCRUM_DIR not set."
    }

    open FILE, $ENV{SCRUM_DIR} . $filename or die $!;
    while(my $info = <FILE>) {
        chomp $info;
        $witem->command("say " . "#info " . $info);
    }
    close(FILE);
    $witem->command("say " . "EOS");
};
