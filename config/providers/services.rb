# frozen_string_literal: true

Application.register_provider(:services) do
  start do
    register('services.user', Services::User.new)
  end
end
