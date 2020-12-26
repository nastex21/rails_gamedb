json.extract! gamedb, :id, :username, :password, :steamID, :created_at, :updated_at
json.url gamedb_url(gamedb, format: :json)
