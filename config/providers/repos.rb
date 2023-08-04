# frozen_string_literal: true

Application.register_provider(:repos) do
  start do
    target.start :persistence

    register('repos.user', Repos::User.new(target['container']))
  end
end
