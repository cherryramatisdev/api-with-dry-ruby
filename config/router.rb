# frozen_string_literal: true

require 'sinatra/base'

# ApplicationRoutes...
class ApplicationRoutes < Sinatra::Base
  get '/' do
    Controllers::User.new.index
  end
end
