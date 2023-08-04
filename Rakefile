# frozen_string_literal: true

require 'rom-sql'
require 'rom/sql/rake_task'

require_relative 'config/boot'
require_relative 'config/application'
require_relative 'config/providers/db'

namespace :db do
  task :setup do
    Application.start(:db)
    config = Application['db.config']
    config.gateways[:default].use_logger(Logger.new($stdout))
  end
end
