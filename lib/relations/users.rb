# frozen_string_literal: true

module Relations
  class Users < ROM::Relation[:sql]
    schema(:users) do
      attribute :id, Types::Integer
      attribute :name, Types::String
      attribute :email, Types::String

      primary_key :id
    end
  end
end
