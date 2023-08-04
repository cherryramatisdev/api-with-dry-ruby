# frozen_string_literal: true

require 'rom-repository'

module Repos
  class User < ROM::Repository[:users]
    commands :create

    # @param limit Integer
    def all(limit = 10)
      users.limit(limit).to_a
    end
  end
end
