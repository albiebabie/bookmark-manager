require 'data_mapper'
require './app/app.rb'

namespace :db do
  desc "Database upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto upgrade complete"
  end
end
