# Mutt sender profile:  akiress1976@gmail.com

# Sending options
set from="akiress1976@gmail.com"
set realname="Ben Guitreau"
set use_from=yes
set sendmail="/usr/bin/msmtp -a gmail"

# Signature file
set signature="~/.mutt/signatures/akiress1976@gmail.com"


# Customized headers
unmy_hdr *                      # Remove all extra headers first
my_hdr From: Ben Guitreau <akiress1976@gmail.com>
my_hdr Reply-To: Ben Guitreau <akiress1976@gmail.com>

# Include the profile name in the status line
set status_format="-%r-Mutt: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)---akiress1976@gmail.com-%>-(%P)---"
