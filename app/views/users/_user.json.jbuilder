json.extract! user, :id, :username, :password_digest, :email, :character_id, :created_at, :updated_at
json.url user_url(user, format: :json)
