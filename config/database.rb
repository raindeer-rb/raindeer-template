# frozen_string_literal: true

require 'lowdata'

Sequel.extension :migration

# Set DATABASE_URL to use another database, e.g. postgres://localhost/app_name.
DB = Sequel.connect(ENV.fetch('DATABASE_URL', 'sqlite://db/development.sqlite3'))
Sequel::Migrator.run(DB, File.expand_path('../db/migrations', __dir__))

LowData.database = DB
