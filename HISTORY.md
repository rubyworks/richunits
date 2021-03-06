# Release History

## 0.6.2 / 2011-10-24

A simple maintenance release to bring the project's build configuration
up to date with more modern tools.

Changes:

* Modernize build configuration.


## 0.6.1 / 2010-10-04

Minor release simply add #to_int method to Duration so Time#+
and Time#- will work with Durations in Ruby 1.9.2 (Ruby 1.8.x
uses #to_f).

Changes:

* Add Duration#to_int for Ruby 1.9.2.


## 0.6.0 / 2009-10-31

This release tightens up the Duration interface a bit and fixed the
`Duration#*` method which was accidentally named `#+`.

Changes:

* More robust interface for Duration class.
* Rename #+ method to #* (typo).
* Update metadata for Gem Do POM.


## 0.5.0 / 2009-05-30

This release updates some extensions to Time for use with the
Duration class, and standardizes the library on the name 'richunits',
rather than using the underscored "rich_units". This means installation
is now:

    gem install richunits

and loading the library is now:

    require 'richunits'

Though a backward compatible require is still present.

The previous release contains a complete rewrite of the Duration
class and integrates it into the rest of the system.

Changes:

* Rewrote Duration class and integrated into rest of system.
* Name of gem and main require will be 'richunits' (no underscore).


## 0.4.0 / 2008-09-09

This release includes a completely rewritten Duration class and integrates
into the rest of the system.

Changes:

* Wrote new Duration class.


## 0.3.0 / 2008-09-08

This release adds RichUnits toplevel namespace.

Changes:

* Encapsulated entire library in RichUnits module.


## 0.2.0 / 2008-08-01

Continued work on RichUnits.

Changes:

* Reorganized repository.


## 0.1.0 / 2008-03-27

First release of RichUnits.

Changes:

* Initial version.

