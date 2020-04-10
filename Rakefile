# Note: If you get an error when trying to run rake commands, 
# you may have a newer version of rake already installed compared 
# to this lesson, causing a conflict. To avoid this error, run 
# "bundle exec rake -T". Adding bundle exec indicates that you want 
# rake to run within the context of this lesson's bundle (defined in 
# the Gemfile), not the default version of rake you have installed 
# globally on your computer.

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
  require 'irb'
  ARGV.clear
  IRB.start
end
