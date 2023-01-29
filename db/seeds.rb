99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@naver.com"
  password = "password"
  User.create!(name: name, email: email, password: password, 
    password_confirmation: password)
end
