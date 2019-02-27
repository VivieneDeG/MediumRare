unless @user.nil?
  json.user do
    json.name @user.name
    json.email @user.email
  end
else
  json.user do
  end
end