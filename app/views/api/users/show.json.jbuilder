unless @user.nil?
  json.user do
    json.id @user.id
    json.name @user.name
  end
else
  json.user do
  end
end