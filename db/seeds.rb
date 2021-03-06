User.create!(
                name: "Phuoc Bui",
                email: "phuoc@gmail.com",
                username: "phuocbui",
                password: "password",
                password_confirmation: "password",
                admin: true
        )

User.create!(
                name: "Brye Walker",
                email: "brye@gmail.com",
                username: "bryewalker",
                password: "password",
                password_confirmation: "password",
                admin: true

        )

User.create!(
                name: "Victoria Roos-Walls",
                email: "victoria@gmail.com",
                username: "victoriarooswalls",
                password: "password",
                password_confirmation: "password",
                admin: true

        )

User.create!(
                name: "Brendon Germany",
                email: "brendon@gmail.com",
                username: "brendongermany",
                password: "password",
                password_confirmation: "password",
                admin: true

        )

10.times do
    first_name = Faker::Name.first_name 
    last_name = Faker::Name.last_name

    User.create!(
                    name: "#{first_name} #{last_name}",
                    email: "#{first_name}@gmail.com",
                    username: "#{first_name}#{last_name}",
                    password: "password",
                    password_confirmation: "password"
            )
end



Restroom.create(
                location: "215 W Ohio St Suite 300, Chicago, IL 60654"
                )

Restroom.create(
                location: "59 W Hubbard St #2, Chicago, IL 60654"
                )

Restroom.create(
                location: "519 N Clark St, Chicago, IL 60654"
                )

Restroom.create(
                location: "430 N Michigan Ave, Chicago, IL 60611"
                )

Restroom.create(
                location: "100 W Ontario St, Chicago, IL 60654"
                )


50.times do
  random_summary = Faker::GreekPhilosophers.quote

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
                summary: random_summary,
                restroom_id: rand(1..5),
                user_id: rand(1..14),
                overall_rating: rand(0..5)
                )
end