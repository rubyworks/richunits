---
source:
- meta
authors:
- name: Thomas Sawyer
  email: transfire@gmail.com
- name: Rich Kilmer
copyrights: []
replacements: []
alternatives: []
requirements:
- name: detroit
  groups:
  - build
  development: true
- name: rspec
  groups:
  - test
  development: true
dependencies: []
conflicts: []
repositories:
- uri: git://github.com/rubyworks/richunits.git
  scm: git
  name: upstream
resources:
  home: http://rubyworks.github.com/richunits
  code: http://github.com/rubyworks/richunits
  mail: http://groups.google.com/groups/rubyworks-mailinglist
extra: {}
load_path:
- lib
revision: 0
created: '2008-02-21'
summary: Simple LCD Unit System
title: RichUnits
version: 0.6.1
name: richunits
description: ! 'A Unit system, based on Rich Kilmer''s original time.rb work, which
  provides

  english-esque methods for working with common units, such as days and bytes

  and multiplers like kilo, or mega. It does so by reducing basic measures to

  a lower common denominator, such as seconds for time measures and bits for

  byte measures.'
organization: Rubyworks
date: '2011-10-24'
