json.data do
  json.users do
    json.call(
      @users,
      :full_name,
      :email
    )
  end
end