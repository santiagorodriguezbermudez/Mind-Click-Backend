json.ignore_nil!
json.data do
  json.user do
    json.id @user.id
    json.full_name @user.full_name
    json.email @user.email
  end
end