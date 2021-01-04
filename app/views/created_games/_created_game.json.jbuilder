json.extract! created_game, :id, :game_id, :title, :image, :system, :released_date, :created_at, :updated_at
json.url created_game_url(created_game, format: :json)
