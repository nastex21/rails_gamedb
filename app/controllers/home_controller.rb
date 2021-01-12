class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all
    @games = steam_games + created_games

    respond_to do |format|
      format.html { render(:text => "not implemented") }
      format.js
    end

  end
    

end