require "sinatra"
require_relative 'answers'

set :bind, "0.0.0.0"

get '/' do
  erb :index
end

get '/show' do
  @answer = ANSWERS.sample
  erb :show
end
