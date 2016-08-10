require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
adapter: "sqlite3",
database: 'db/development.sqlite')

require_relative 'cli-router'
require_relative '../app/models/memo'
require_relative '../cli-app/controllers/new_memo_controller'
require_relative '../cli-app/controllers/all_memos_controller'
