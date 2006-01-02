#!/bin/sh
#
#  Automatically attempt to create a test which ensures all the modules
# used in the code are availabe.
#
# Steve
# --
# http://www.steve.org.uk/
#
# $Id: modules.sh,v 1.4 2006-01-02 14:05:58 steve Exp $
#

cat <<EOF
#!/usr/bin/perl -w -I..
#
#  Test that all the Perl modules we require are available.
#
#  This list is automatically generated by modules.sh
#
# Steve
# --
#

use Test::More qw( no_plan );

EOF


for i in `rgrep '^use ' .. | awk '{print $2}' | tr -d \;\(\) | sort | uniq`; \
    do \
     echo "BEGIN{ use_ok( '$i' ); }"; \
     echo "require_ok( '$i' );" ; \
     echo -e "\n" ; \
done

