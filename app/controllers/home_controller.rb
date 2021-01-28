class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all

    @games = steam_games + created_games
    @name_game = params[:game]
    @name_platform = params[:platform_list]
    @name_store = params[:store_list]

    GetGamesCall.call(params[:game], params[:platform_list], params[:store_list])
  end

  def create
    data = {:message => "Alert this!"}
    render :json => data, :status => :ok

    puts 'this is data'
    puts data 
    puts 'this is params'
    puts params


  end
end