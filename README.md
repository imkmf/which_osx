# which_osx

- http://github.com/imkmf/which_osx

## DESCRIPTION:

A simple ruby program for outputting some information about your Mac's version, as well as some clever ways of intepreting it.

## FEATURES/PROBLEMS:

- Uses the terminal command `sw_vers` and parses it into a readable format.

- **This doesn't work on anything but Mac. Seriously. You won't be able to do much with this gem on anywhere but OS X.**

## USAGE:

By requiring which_osx, you gain access to a couple useful methods:

### WhichOSX.version

    puts WhichOSX.version
    => 10.9.0

### WhichOSX.full_name
    
    puts WhichOSX.full_name
    => Mac OS X 10.9.0

### WhichOSX.short_name

    puts WhichOSX.short_name
    => Mavericks

WhichOSX version 1.0.5 introduces boolean methods for checking the operating system:

### WhichOSX.is_mavericks
    
    WhichOSX.is_mavericks
    => true

Includes `is_mavericks`, `is_mountain_lion`, `is_lion`, `is_snow_leopard`, `is_leopard`, and `is_tiger`.

### Binary

Running from the command line returns the OS version by default:

    $ which_osx   
    => This Mac is currently running 10.8.2.

## REQUIREMENTS:

- [Rspec](http://rspec.info)
- [YARD](http://yardoc.org) (and [redcarpet](http://yardoc.org) for Markdown formatting)


## INSTALL:

    gem install which_osx

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
