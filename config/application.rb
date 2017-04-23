require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module TrendyCo
  class Application < Rails::Application
    config.assets.precompile += %w(vendor/assets/images/*)
  end
end
