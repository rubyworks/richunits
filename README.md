# RichUnits

[Website](http://rubyworks.github.com/richunits) /
[Documentation](http://rubydoc.info/gems/richunits/frames) /
[Report Issue](http://github.com/rubyworks/richunits/issues) /
[Source Code](http://github.com/rubyworks/richunits)

[![Gem Version](https://badge.fury.io/rb/richunits.png)](http://badge.fury.io/rb/richunits)
[![Build Status](https://travis-ci.org/rubyworks/richunits.png)](https://travis-ci.org/rubyworks/richunits)
[![Flattr Me](http://api.flattr.com/button/flattr-badge-large.png)](http://flattr.com/thing/324911/Rubyworks-Ruby-Development-Fund)


## About

RichUnits is simple units system based on Rich Kilmer's original
time.rb script, in which different measures of time are represented
as seconds via extensions to the Numeric class. Later, Ruby on Rails'
ActiveSupport library adopted this script and expanded upon it.
RichUnits borrows from their work and a few other renditions this code
that have made the rounds to create a robust stand-alone version.

Unique to RichUnits' rendition is the Duration class (inspired by Matthew
Harris' version by the same name). Originally time measures were stored as
integers representing seconds. The Duration class instead stores the seconds
as an attribute and adds an optional segements property which can be used to
select exactly how to segment up the time period (years, week, days, etc.).


## Usage

You only need to require 'richunits' and all of RichUnit's functionality
becomes available.

    require 'richunits'

    2.hours  #=> 7200

See RDocs for complete API documentation.


## Development

RichUnits utilizes GitHub for development. You will find the git 
repo under the rubyworks account.

    git://github.com/rubyworks/richunits.git

RichUnits utilizes the Syckle build system.


## Copyrights

* Copyright (c) 2008 Thomas Sawyer
* Copyright (c) 2006 Matthew Harris
* Copyright (c) 2004 Rich Kilmer

If you have contributed to this code and feel you deserve mention
in the copyright notice, please let me know. Since this code has
been through a number of hands and other projects (Facets and
ActiveSupport among them) it is hard to identify exactly who is
responsible for what. Nonetheless, Rich Kilmer is the initiator
of the whole idea (AFAIK), so I figure much of the rights belong
to him.

RichUnits is distributed under the terms of the MIT license.

See LICENSE.txt file.
