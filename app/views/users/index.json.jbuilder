json.array!(@users) do |user|
  json.extract! user, :provider, :uid, :name, :screen_name, :image
  json.url user_url(user, format: :json)
end