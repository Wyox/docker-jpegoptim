# Overview

This image is based on alpine distro with jpegoptim from the package manager on alpine. The image has been slightly modified to make it easier and faster to use. This image will search all jpg and jpeg files in the given location and runs any arguments you give it.

The command that will be run inside a container is.

`find /input -type f \( -iname \*.jpg -o -iname \*.jpeg \) -exec jpegoptim $* {} \;`

By default it will replace a given file

# Usage

`docker run turion/jpegoptim`


# Examples

Force optimisation and remove all markers

`docker run -v $(pwd):/input turion/jpegoptim --strip-all -f`

Set quality to 75%

`docker run -v $(pwd):/input turion/jpegoptim -m75 -f`

Set quality to 75%, resize by 50%, put the result into /output and overwrite if already exists

`docker run -v $(pwd)/input:/input -v $(pwd)/output:/output turion/jpegoptim -m75 -S25% --strip-all -f -o --dest=/output`
