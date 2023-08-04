module Controllers
  class User
    def initialize
      @repo = Repos::User.new(Application['container'])
    end
  end
end
