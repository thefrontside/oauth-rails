Bundler.require :default, :development

$:.push(File.expand_path('../../../lib', __FILE__))
require 'oauth/rails'

module RouteProxy
  # didn't find a cleaner way to get route helpers into my steps
  def method_missing(sym, *args)
    if route_helpers.respond_to?(sym)
      route_helpers.send(sym, *args)
    else
      super
    end
  end

  def route_helpers
    MyEngine::Engine.routes.url_helpers
  end
end

World(RouteProxy)

Before do
  OAuth::Engine.routes.default_url_options[:host] = 'test.host'
end