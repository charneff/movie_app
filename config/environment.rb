require 'dotenv/load'
require 'bundler/setup'
Bundler.require

require_relative '../app/controllers/application_controller'
require_all 'app'


ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "db/development.sqlite3"
})