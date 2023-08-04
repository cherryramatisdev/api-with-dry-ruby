# frozen_string_literal: true

Application.register_provider(:db) do
  prepare do
    require 'rom'
    require 'rom-sql'
  end

  start do
    connection = Sequel.connect(ENV.fetch('DATABASE_URL', nil), extensions: %i[pg_timestamptz])
    register('db.connection', connection)
    register('db.config', ROM::Configuration.new(:sql, connection))
  end
end
