require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TVGuide
  # General configuration of Rails Application
  class Application < Rails::Application
    config.generators do |g|
      g.factory_girl true
    end
  end
end
