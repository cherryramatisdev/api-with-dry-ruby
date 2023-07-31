# typed: true
# frozen_string_literal: true

require 'sinatra/base'
require_relative '../app/controllers/index_controller'

# App...
class App < Sinatra::Base
  get '/' do
    IndexController.index
  end
end
