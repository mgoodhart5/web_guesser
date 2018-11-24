require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(1..100)

def guess_check(guess)
  if guess.class == String
    if guess.to_i > NUMBER
      "Too High!"
    elsif guess.to_i < NUMBER
      "Too Low!"
    elsif guess.to_i == NUMBER
      "You're the best! The Secret Number is #{NUMBER}"
    end
  end
end

get '/' do
  guess = params["guess"]
  message = guess_check(guess)
  erb :index, :locals => {:number => NUMBER, :message => message}
end
