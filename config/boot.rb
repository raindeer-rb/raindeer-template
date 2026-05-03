# frozen_string_literal: true

# This file is for loading the Raindeer framework. You won't typically need to modify this file.
# You could add your own boot script in "app/boot.rb" for example.

require 'raindeer'
require 'raindeer/config_loader'

# Optionally override your config below with environment variables.
env = {
  host: ENV.fetch('RAIN_HOST', nil),
  port: ENV.fetch('RAIN_PORT', nil),
  web_root: ENV.fetch('RAIN_WEB_ROOT', nil),
  matrix_mode: Rain::ConfigLoader.parse_boolean(ENV.fetch('RAIN_MATRIX', nil)),
}

config = Rain::ConfigLoader.load('./config/config.yaml', env)

LowDependency.provide('rain.router') do
  Rain::Router.new
end

LowDependency.provide('rain.matrix') do
  Rain::Matrix.new(event_pool: Low::Providers['low.event.pool'])
end

LowDependency.provide('low.loop') do
  LowLoop.new(config:, router: Low::Providers['rain.router'], renderer: Low::Providers['rain.matrix'])
end

LowLoad.dirload(File.expand_path('../system', __FILE__))
