--- 
name: richunits
title: RichUnits
contact: Trans <transfire@gmail.com>
requires: 
- group: 
  - build
  name: syckle
  version: 0+
- group: 
  - test
  name: rspec
  version: 0+
resources: 
  "": git://github.com/rubyworks/richunits.git
  code: http://github.com/rubyworks/richunits
  home: http://rubyworks.github.com/richunits
pom_verison: 1.0.0
manifest: 
- .ruby
- lib/rich_units.rb
- lib/richunits/bytes.rb
- lib/richunits/duration.rb
- lib/richunits/multipliers.rb
- lib/richunits/times.rb
- lib/richunits/version.rb
- lib/richunits/weekdays.rb
- lib/richunits.rb
- spec/bytes_spec.rb
- spec/duration_spec.rb
- spec/multipliers_spec.rb
- spec/times_spec.rb
- Rakefile
- HISTORY.rdoc
- README.rdoc
- VERSION
- COPYING
version: 0.6.1
copyright: Copyright (c) 2008 Thomas Sawyer
licenses: 
- MIT
description: A Unit system, based on Rich Kilmer's original time.rb work, which provides english-esque methods for working with common units, such as days and bytes and multiplers like kilo, or mega. It does so by reducing basic measures to a lower common denominator, such as seconds for time measures and bits for byte measures.
organization: RubyWorks
summary: Simple LCD Unit System
authors: 
- Thomas Sawyer
- Rich Kilmer
created: 2008-02-21
