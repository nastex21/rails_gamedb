class GetGamesCall < ApplicationService
    private
        def call(url, num)
            puts 'inside call'
            puts url
            response = Excon.get(
                url,
                :headers => {
                'X-RapidAPI-Host' => URI.parse(url).host,
                'X-RapidAPI-Key' => ENV['RAPID_KEY']
                }
            )

            return nil if response.status != 200


            return make_game_list(response.body, num)
        end

        def find_game(name, platform, store)

            if name.present? && platform.blank? && store.blank?
                puts 'inside first conditional'
                url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&page_size=10"
                call(url, 1)
            elsif name.present? && platform.present? && store.blank?
                puts 'inside second conditional'
                url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&platforms=#{CGI.escape(platform)}&page_size=10"
                call(url, 2)
            elsif name.present? && platform.blank? && store.present? 
                url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&stores=#{CGI.escape(store)}&page_size=10"
                call(url, 3)
            elsif name.present? && platform.present? && store.present?
                url = "https://rawg-video-games-database.p.rapidapi.com/games?search=#{CGI.escape(name)}&platforms=#{CGI.escape(platform)}&stores=#{CGI.escape(store)}&page_size=10"
                call(url, 4)
            elsif name.blank? && platform.present? || name.blank? && store.present? || name.blank? && platform.present? && store.present?
                flash[:alert] = 'Please enter name of game'
                return render action: :index
            end 

        end

        def make_game_list(games, num)
            results = JSON.parse(games)
            @results = results["results"]
            
            if num == 1 
            @search_method = 'name'
            elsif num == 2 
            @search_method = 'platform'
            elsif num == 3
            @search_method = 'store'
            end

            respond_to do |format|
            format.html { render(:text => "not implemented") }
            format.js
            end

        end
end