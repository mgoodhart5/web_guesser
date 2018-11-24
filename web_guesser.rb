require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(1..100)

get '/' do
  erb :index, :locals => {:number => NUMBER}
end
