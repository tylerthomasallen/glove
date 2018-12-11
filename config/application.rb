require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Glove
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    ENV['GLOVE_DATABASE_PASSWORD'] = 'admin'
    ENV['TWITCH_CLIENT_ID'] = '760n5r3ipb632fqxprvxkado9jxka4'
    ENV['TWITCH_CLIENT_SECRET'] = '0ma62l32m43su1mqnxjqqxs34zisti'
  end
end
