require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GiveNTake
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
		config.load_defaults 6.0
		config.autoloader = :classic
    config.autoload_paths << "#{config.root}/lib/validators"
		Rails.autoloaders.main.ignore("#{Rails.root}/app/overrides")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
