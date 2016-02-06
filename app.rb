require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end
end