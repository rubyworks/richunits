--- !ruby/object:Gem::Specification 
name: richunits
version: !ruby/object:Gem::Version 
  hash: 5
  prerelease: false
  segments: 
  - 0
  - 6
  - 1
  version: 0.6.1
platform: ruby
authors: 
- Thomas Sawyer
- Rich Kilmer
autorequire: 
bindir: bin
cert_chain: []

date: 2010-11-04 00:00:00 -04:00
default_executable: 
dependencies: 
- !ruby/object:Gem::Dependency 
  name: syckle
  prerelease: false
  requirement: &id001 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        hash: 3
        segments: 
        - 0
        version: "0"
  type: :development
  version_requirements: *id001
- !ruby/object:Gem::Dependency 
  name: rspec
  prerelease: false
  requirement: &id002 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        hash: 3
        segments: 
        - 0
        version: "0"
  type: :development
  version_requirements: *id002
description: A Unit system, based on Rich Kilmer's original time.rb work, which provides english-esque methods for working with common units, such as days and bytes and multiplers like kilo, or mega. It does so by reducing basic measures to a lower common denominator, such as seconds for time measures and bits for byte measures.
email: transfire@gmail.com
executables: []

extensions: []

extra_rdoc_files: 
- README.rdoc
files: 
- lib/rich_units.rb
- lib/richunits/bytes.rb
- lib/richunits/duration.rb
- lib/richunits/multipliers.rb
- lib/richunits/times.rb
- lib/richunits/version.yml
- lib/richunits/weekdays.rb
- lib/richunits.rb
- spec/bytes_spec.rb
- spec/duration_spec.rb
- spec/multipliers_spec.rb
- spec/times_spec.rb
- Rakefile
- HISTORY.rdoc
- PROFILE
- README.rdoc
- VERSION
- COPYING
has_rdoc: true
homepage: http://rubyworks.github.com/richunits
licenses: 
- MIT
post_install_message: 
rdoc_options: 
- --title
- RichUnits API
- --main
- README.rdoc
require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
required_rubygems_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
requirements: []

rubyforge_project: richunits
rubygems_version: 1.3.7
signing_key: 
specification_version: 3
summary: Simple LCD Unit System
test_files: []

