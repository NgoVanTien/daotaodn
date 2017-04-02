require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DaoTao
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.{rb,yml}"]
    config.i18n.default_locale = :vi
    config.to_prepare do
      Devise::SessionsController.layout "login_application"
      Devise::RegistrationsController.layout "login_application"
      Devise::PasswordsController.layout "login_application"
    end
  end
end
