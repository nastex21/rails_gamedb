class HomeController < ApplicationController
  def index
    @steam_games = SteamGame.all
    @manually_created_games = ManuallyCreatedGame.all
  end
end
