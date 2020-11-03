json.ignore_nil!
json.data do
  json.id @favorite.id
  json.therapist do
    json.id @therapist.id
    json.full_name @therapist.full_name
    json.email @therapist.email
  end
  json.user do
    json.id @user.id
    json.full_name @user.full_name
    json.email @user.email
  end
end