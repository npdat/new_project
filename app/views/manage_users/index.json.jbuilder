json.array!(@user) do |user|
  json.extract! user, :id
  json.url manage_user_url(user, format: :json)
end
