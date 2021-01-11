class HomeController < ApplicationController

  def index
    steam_games = SteamGame.all
    created_games = CreatedGame.all
    @games = steam_games + created_games

    @search = find_game(params[:game])

    if @search.present?
        @results = @search["results"]
        @results = JSON.parse(@search)
    
        unless @results
            flash[:alert] = 'Sorry, game not found'
            return render action: :index
        end
    end
  end
    
private

def request_api(url)
Rails.ajax({
  url: url,
  type: "get",
  data: "",
  success: function(data) {
      puts data
  },
  error: function(data) {}
})


return nil if response.status != 200


return response.body
end

def find_game(name)
    if name.present?
        url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&page_size=10"
        request_api(url)
    end
end
  

end