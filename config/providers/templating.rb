# frozen_string_literal: true

Application.register_provider(:templating) do
  start do
    register('templating.erb', Helpers::Erb.new)
  end
end
