require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapater => "sqlite3",
  :database => "db/development.sqlite"
)
require_all 'app'
