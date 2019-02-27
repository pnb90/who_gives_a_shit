User.create!(
                name: "Phuoc Bui",
                email: "phuoc@gmail.com",
                username: "phuocbui",
                password: "password",
                password_confirmation: "password"
        )

User.create!(
                name: "Brye Walker",
                email: "brye@gmail.com",
                username: "bryewalker",
                password: "password",
                password_confirmation: "password"
        )

User.create!(
                name: "Victoria Roos-Walls",
                email: "victoria@gmail.com",
                username: "victoriarooswalls",
                password: "password",
                password_confirmation: "password"
        )

User.create!(
                name: "Brendon Germany",
                email: "brendon@gmail.com",
                username: "brendongermany",
                password: "password",
                password_confirmation: "password"
        )

20.times do 
  address = Faker::Address.street_address

  Restroom.create(
                  location: address
                  )
end

50.times do
  Review.create(
                cleanliness: rand(0..5),
                uniqueness: rand(0..5),
                upkeep: rand(0..5),
                toilet_paper_quality: rand(0..5),
                amenities: rand(0..5),
                accessibility: rand(0..5),
                number_of_stalls: rand(0..5),
                size: rand(0..5),
                privacy: rand(0..5),
                overall_rating: rand(0..5),
                summary: rand(0..5),
                restroom_id: rand(1..21),
                user_id: rand(1..4)
                )
end