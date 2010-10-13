# -*- ruby -*-

desc "run unit tests"
task :test do
  $:.unshift('./lib')
  Dir['test/*.rb'].each do |file|
    load file
  end
end

# vim: syntax=Ruby

