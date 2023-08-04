# frozen_string_literal: true

ENV['APP_ENV'] ||= 'development'

require 'bundler'
Bundler.setup(:default, ENV.fetch('APP_ENV', nil))

require 'dotenv'
Dotenv.load('.env', ".env.#{ENV.fetch('APP_ENV', nil)}")
