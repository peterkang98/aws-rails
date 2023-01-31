User.create!(name: "Peter Kang", email: "peterkang98@gmail.com", password: "bb123456", password_confirmation: "bb123456",
             admin: true, activated: true, activated_at: Time.zone.now)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@naver.com"
  password = "password"
  User.create!(name: name, email: email, password: password, 
               password_confirmation: password, activated: true, activated_at: Time.zone.now)
end
