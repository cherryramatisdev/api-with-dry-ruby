# frozen_string_literal: true

require_relative 'config/boot'
require_relative 'config/application'
require_relative 'config/providers/db'
require_relative 'config/providers/persistence'
require_relative 'config/providers/repos'
require_relative 'config/providers/services'
require_relative 'config/router'

Application.finalize!

ApplicationRoutes.run!
