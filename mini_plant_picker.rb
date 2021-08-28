require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/content_for"
require "tilt/erubis"

configure do
  enable :sessions
  set :session_secret, "pick_your_plants_not_your_nose"
  set :erb, :escape_html => true
end

get "/" do
  erb :index
end