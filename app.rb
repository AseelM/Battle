require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1])
    player_2 = Player.new(params[:player2])
    @game = Game.create(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    @game.switch
    erb :attack
  end

  run! if app_file == $0
end
