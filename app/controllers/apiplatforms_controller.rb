class ApiplatformsController < ApplicationController

    def index
    end
    
    def search
        findings = find_game(params[:game])
        @results = findings["results"]
    
        unless @results
            flash[:alert] = 'Sorry, game not found'
            return render action: :index
        end
  
    end

    private

    def request_api(url)
        response = Excon.get(
            url,
            :headers => {
            'X-RapidAPI-Host' => URI.parse(url).host,
            'X-RapidAPI-Key' => ENV['RAPID_KEY']
            }
        )

    return nil if response.status != 200


    JSON.parse(response.body)
    end

    def find_game(name)
        url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&page_size=10"
        request_api(url)
    end
end
