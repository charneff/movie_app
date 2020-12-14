require 'dotenv/load'
require 'bundler/setup'
Bundler.require

require_relative '../app/controllers/application_controller'
require_all 'app'

if settings.development?
  ActiveRecord::Base.establish_connection({
    adapter:  "sqlite3",
    database: "db/development.sqlite3"
  })
else
  ActiveRecord::Base.establish_connection({
    adapter:  "sqlite3",
    database: "db/production.sqlite3"
  })
end 