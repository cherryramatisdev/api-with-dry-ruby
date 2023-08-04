module Controllers
  class User
    def initialize
      @service = Application['services.user']
    end

    def index
      @service.list_all
    end
  end
end
