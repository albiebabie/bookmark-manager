require 'data_mapper'
require './app/app.rb'

namespace :db do
  desc "Database upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto upgrade complete"
  end
  desc "Datbase migrate"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto migrate complete (this will clear all data)"
  end
end
