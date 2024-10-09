require_relative "boot"
require "rails/all"

# Require the gems listed in Gemfile
Bundler.require(*Rails.groups)

module BBSConstruction
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version
    config.load_defaults 7.0

    # Configure asset pipeline
    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app/assets/builds")

    # Configure importmap
    config.importmap.enabled = true
  end
end
