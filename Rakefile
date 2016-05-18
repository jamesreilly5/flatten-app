lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rake/testtask'
require 'rdoc/task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

Rake::TestTask.new(:test) do |t|
  t.libs << :test
  t.verbose = true
  t.test_files = FileList['spec/**/*_spec.rb']
end

task default: [:test, :rubocop]
