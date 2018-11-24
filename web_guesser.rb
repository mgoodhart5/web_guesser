require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(0..100)

get '/' do
  "THE SECRET NUMBER is #{NUMBER}"
end
