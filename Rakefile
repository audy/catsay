desc 'run tests'
task :spec do
  system 'bundle exec rspec'
end

task :default => :spec

namespace :gem do
  spec = Gem::Specification::load("catsay.gemspec")
  gemfile = "catsay-#{spec.version}.gem"

  task :build => gemfile

  file gemfile do
    system 'gem build catsay.gemspec'
  end

  task :release => gemfile do
    system "gem push #{gemfile}"
  end
end
