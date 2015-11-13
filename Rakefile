#!/usr/bin/env rake

task default: [:lint, :unit, :acceptance]
task lint: [:rubocop, :foodcritic]
task unit: [:rspec]
task acceptance: [:kitchen, :audit]

desc 'Runs Rubocop'
task :rubocop do
  sh('rubocop .')
end

desc 'Runs Foodcritic'
task :foodcritic do
  sh('foodcritic .')
end

desc 'Runs rspec'
task :rspec do
  sh('rspec')
end

desc 'Runs kitchen verify'
# Normally this would run kitchen test.  For brevity, we will run verify.
task :kitchen do
  sh('kitchen converge default')
  sh('kitchen verify default')
end

desc 'Runs audit kitchen converge'
# Normally this would run kitchen test.  For brevity, we will run verify.
task :audit do
  sh('kitchen converge audit')
end
