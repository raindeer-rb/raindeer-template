# frozen_string_literal: true

require 'bundler/setup'
require_relative '../config/database'

return unless DB[:users].empty?

user_id = DB[:users].insert(username: 'raindeer')
DB[:posts].insert(user_id:, title: 'Hello', body: 'Your first post, loaded with a data expression.')
DB[:posts].insert(user_id:, title: 'World', body: 'Edit db/seeds.rb or app/data/posts_data.rb to change me.')
