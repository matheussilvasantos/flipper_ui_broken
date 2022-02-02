require "sinatra"

class App < Sinatra::Application
  use Rack::Session::Pool, :secret => SecureRandom.uuid

  get "/" do
    "hello friend, hello friend"
  end
end
