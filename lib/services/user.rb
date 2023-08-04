module Services
  class User
    def initialize
      @repo = Application['repos.user']
    end

    def list_all
      users = @repo.all

      users.map do |user|
        { id: user.id, name: user.name, email: user.email }
      end.to_json
    end
  end
end
