require "sinatra"
require "sinatra/content_for"
require "active_record"
require "gschool_database_connection"
require "rack-flash"
require "date"

class App < Sinatra::Application
  helpers Sinatra::ContentFor
  enable :sessions
  use Rack::Flash

  def initialize
    super
  end

  get "/" do
    erb :home
  end

end