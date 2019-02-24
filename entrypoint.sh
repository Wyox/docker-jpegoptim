#!/bin/sh

# Check if we are the help command otherwise don't execute

if [ "$*" = "--help" ]; then
    jpegoptim $*
else
    # Find all jpeg files and run the command jpegoptim with given arguments
    find /input -type f \( -iname \*.jpg -o -iname \*.jpeg \) -exec jpegoptim $* {} \;
fi;



