# which_osx

![The contemplative Mac](http://i.imgur.com/RNIc8.png)

- http://github.com/imkmf/which_osx

## DESCRIPTION:

A simple ruby program for outputting some information about your Mac.

## FEATURES/PROBLEMS:

- Uses the terminal command `sw_vers` and parses it into a readable format.

- **This doesn't work on anything but Mac. Seriously. You won't be able to do much with this gem on anywhere but OS X.**

## USAGE:

which_osx can be imported into a project and used to return the current version of OS X (as of writing, my computer returns "10.7.3"):

    require 'which_osx'

    module ForTheREADME
      def self.test
          who_am_i = WhichOSX.version
        end
    end

which_osx version 1.0.3 adds new methods for different outputs:

    $ WhichOSX.full_name
    => Mac OS X 10.7.3

    $ WhichOSX.short_name
    => Lion

Running from the command line returns the OS version by default:

    $ which_osx   
    => 10.7.3

## REQUIREMENTS:

- None

## INSTALL:

    sudo gem install which_osx

## DEVELOPERS:

After checking out the source, run:

  $ rake

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

## LICENSE:

(The MIT License)

Copyright (c) 2012 Kristian Freeman

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.