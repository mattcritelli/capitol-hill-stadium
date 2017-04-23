require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# DEPRECATION WARNING: Time columns will become time zone aware in Rails 5.1. This
# still causes `String`s to be parsed as if they were in `Time.zone`,
# and `Time`s to be converted to `Time.zone`.
#
# To keep the old behavior, you must add the following to your initializer:
#     config.active_record.time_zone_aware_types = [:datetime]
#
# To silence this deprecation warning, add the following:
#     config.active_record.time_zone_aware_types = [:datetime, :time]

module DenverTheater
  class Application < Rails::Application
    config.time_zone = "Mountain Time (US & Canada)"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
