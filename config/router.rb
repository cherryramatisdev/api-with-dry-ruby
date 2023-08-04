# frozen_string_literal: true

require 'sinatra/base'

# ApplicationRoutes...
class ApplicationRoutes < Sinatra::Base
  get '/' do
    IndexController.new(nil).index
  end
end
