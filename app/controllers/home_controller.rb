class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all

    @games = steam_games + created_games
    result = GetGamesCall.call(params[:game], params[:platform_list], params[:store_list])
    
    if result && result.success?
      @result = result.payload
      respond_to do |format|
        format.html
        format.js
      end
  
    else 
      puts "ERROR"
    end
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