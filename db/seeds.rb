# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Customer.create!([
  { full_name: "Alice Johnson", phone_number: "1234567890", email: "alice@example.com", notes: "Loyal customer" },
  { full_name: "Bob Smith", phone_number: "9876543210", email: nil, notes: "Prefers phone contact" },
  { full_name: "Charlie Brown", phone_number: "5678901234", email: "charlie@example.com", notes: "Regular customer" },
  { full_name: "Diana Prince", phone_number: "3456789012", email: nil, notes: "Special discount applied" },
  { full_name: "Ethan Hunt", phone_number: "4567890123", email: "ethan@example.com", notes: "VIP customer" }
])
