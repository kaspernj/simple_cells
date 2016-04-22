puts "Ensuring user is created"
user = User.find_or_initialize_by(email: "user@example.com")
user.save!
