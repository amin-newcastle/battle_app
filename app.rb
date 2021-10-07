require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
    enable :sessions

    configure :development do
      register Sinatra::Reloader
    end
  
    get '/' do
        erb :index
    end

    post '/names' do
        $player_1 = Player.new(params[:player_1_name])
        $player_2 = Player.new(params[:player_2_name])
        redirect 'play'
    end

    get '/play' do
        @player_2_health = $player_2.health
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        @attack = session[:attack]
        erb :play
    end

    post '/attack' do
        $player_2.take_damage
        session[:attack] = "You have attacked #{$player_2.name}!"
        redirect 'play'
    end
  
    # start the server if ruby file executed directly
    run! if app_file == $0
end