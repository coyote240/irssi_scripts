# IRSSI Scripts

Since I've joined a team working on an entirely open source project, I now find
myself spending a lot of time on IRC using the IRSSI client.  I've looked at
newer, GUI clients but they are all abysmal.  Clearly console clients remain the
way to go.  Besides, I'm enjoying the nostalgia.

But what is IRC without scripting?  So, after many years of engineering, I find
myself a script kiddie.  If you find these scripts useful, awesome.  No fitness
for any purpose is implied.  Use at your own risk.

## Installation

From within the source directory type `make`.

If you're planning on editing the script, `make dev` will put symlinks in the
~/.irssi/scripts directory instead.

## The Scripts

### Scrum

Every day our team conducts its scrum in a public irc channel.  The format is
fixed such that a bot can read and archive our updates for later consumption.

This script will read input from a text file located in environment
variable SCRUM_DIR of the format yyyy-mm-dd.txt and output it's contents
line by line in the appropriate scrum format.  Your scrum file should
contain one update per line with no preceding #info.
