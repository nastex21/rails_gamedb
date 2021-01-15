class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all

    @games = steam_games + created_games

    find_game(params[:game], params[:platform_list], params[:store_list])
  end

private

  def request_api(url)
      puts 'inside request_api'
      puts url
        response = Excon.get(
            url,
            :headers => {
            'X-RapidAPI-Host' => URI.parse(url).host,
            'X-RapidAPI-Key' => ENV['RAPID_KEY']
            }
        )

      return nil if response.status != 200


      return make_game_list(response.body)
   end

  def find_game(name, platform, store)

      if name.present? && platform.blank? && store.blank?
          puts 'inside first conditional'
          url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&page_size=10"
          @games = request_api(url)
      elsif name.present? && platform.present? && store.blank?
          puts 'inside second conditional'
          url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&platforms=#{CGI.escape(platform)}&page_size=10"
          @platform_games = request_api(url)
      elsif name.present? && store.present? 
          url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&stores=#{CGI.escape(store)}&page_size=10"
          @store_games = request_api(url)
      elsif name.blank? && store.present? || name.blank? && platform.present?
          flash[:alert] = 'Please enter name of game'
          return render action: :index
      end 

  end

  def make_game_list(games)
      results = JSON.parse(games)
      @results = results["results"]
      

      respond_to do |format|
        format.html { render(:text => "not implemented") }
        format.js
      end

  end
end