require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
Bundler.require(*Rails.groups)

module Movies
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
  end
end
