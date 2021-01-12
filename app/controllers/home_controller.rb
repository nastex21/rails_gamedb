class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all
    @games = steam_games + created_games

  end
    

end