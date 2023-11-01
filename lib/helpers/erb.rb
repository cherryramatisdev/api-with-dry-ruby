require 'sinatra'

module Helpers
  class Erb
    include ERB::Util

    def initialize
      @erb_binding = binding
    end

    def erb(template, locals = {})
      template_file = File.read("views/#{template}.html.erb")
      erb_template = ERB.new(template_file)

      locals.each do |key, value|
        @erb_binding.local_variable_set(key, value)
      end

      erb_template.result(@erb_binding)
    end
  end
end
