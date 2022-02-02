require_relative "app"
require "flipper"
require "flipper-ui"

url_map = {
  "/" => App,
}

flipper = Flipper.new(Flipper::Adapters::Memory.new)

url_map["/flipper"] = Flipper::UI.app(flipper) do |builder|
  builder.use Rack::Session::Pool, secret: SecureRandom.uuid
end

run Rack::URLMap.new(url_map)
