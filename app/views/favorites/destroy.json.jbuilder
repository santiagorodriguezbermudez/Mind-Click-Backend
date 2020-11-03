json.ignore_nil!
json.data do
  json.id @favorite.id
  json.therapis_id @favorite.therapist_id
  json.user_id @favorite.user_id
end