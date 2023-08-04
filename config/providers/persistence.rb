# frozen_string_literal: true

Application.register_provider(:persistence) do
  start do
    target.start :db

    config = target['db.config']

    config.register_relation(Relations::Users)

    register('container', ROM.container(config))
  end
end
