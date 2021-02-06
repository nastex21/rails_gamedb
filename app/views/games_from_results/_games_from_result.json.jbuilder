json.extract! games_from_result, :id, :created_at, :updated_at
json.url games_from_result_url(games_from_result, format: :json)
