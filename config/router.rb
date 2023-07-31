# typed: true
# frozen_string_literal: true

require 'sinatra/base'
require_relative '../app/controllers/index_controller'

# ApplicationRoutes...
class ApplicationRoutes < Sinatra::Base
  get '/' do
    IndexController.index
  end
end
