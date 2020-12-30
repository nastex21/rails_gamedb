json.extract! steam_game, :id, :title, :created_at, :updated_at
json.url steam_game_url(steam_game, format: :json)
