require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "secret_challenge"
require "pry"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "additive secret"
task :secret_checker, [:limit] do |t, args|
  limit = args[:limit]
  secret = Proc.new{ |x| x < 100 ? x : x * x }
  secret_analyer = SecretChallenge::SecretAnalyzer.new(secret, limit)

  if secret_analyer.additive_for_primes?
    puts "Secret is additive for primes less than #{limit}"
  else
    puts "Secret is not additive for primes less than #{limit}"
  end
end

