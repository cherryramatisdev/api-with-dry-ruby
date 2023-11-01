module Controllers
  class User
    def initialize
      @service = Application['services.user']
      @template = Application['templating.erb']
    end

    def index
      users = @service.list_all
      @template.erb("users/index", { users: })
    end
  end
end
