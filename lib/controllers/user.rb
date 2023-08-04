module Controllers
  class User
    def initialize
      @repo = Application['repos.user']
    end

    def index
      users = @repo.all

      users.map do |user|
        { id: user.id, name: user.name, email: user.email }
      end.to_json
    end
  end
end
