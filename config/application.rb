# frozen_string_literal: true

require 'dry/system'

# Application configure all the paths to be autoloaded and auto injectable.
class Application < Dry::System::Container
  configure do |config|
    config.root = Pathname('.')

    config.component_dirs.loader = Dry::System::Loader::Autoloading

    config.component_dirs.add 'lib'
    config.component_dirs.add 'config'

    # config.component_dirs.add_to_load_path = false

    # config.component_dirs.add 'lib'
  end
end

loader = Zeitwerk::Loader.new
loader.push_dir(Application.config.root.join('lib').realpath)
loader.push_dir(Application.config.root.join('config').realpath)
loader.setup
