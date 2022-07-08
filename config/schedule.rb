# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron


set :output, "log/cron.log"
set :environment, "production"


every :day, at: '17:13pm' do
  rake 'delete:post'
end
