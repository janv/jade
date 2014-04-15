require 'sprockets/railtie'

module Jade
  class Engine < ::Rails::Engine
    config.before_initialize do |app|
      Sprockets::Engines # force autoloading
      Sprockets.register_engine '.jade', ::Jade::Template
    end
  end
end
