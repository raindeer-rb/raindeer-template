# frozen_string_literal: true

require 'bundler/setup'
require 'raindeer/boot'

LowLoad.dirload(File.expand_path('../app', __dir__))
