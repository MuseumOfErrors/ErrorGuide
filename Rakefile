require 'rake'
require 'rake/testtask'

# Define a task to serve the Jekyll site
desc "Serve the Jekyll site"
task :serve do
  trap("INT") { puts "\nInterrupted"; exit 1 }
  exec "bundle exec jekyll serve"
end

# Define a task to run tests
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end

# Define a default task
task default: [:serve, :test]